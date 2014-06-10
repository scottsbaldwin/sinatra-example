FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y curl git build-essential ruby1.9.3
RUN gem install rubygems-update
RUN update_rubygems
RUN gem install bundler sinatra --no-ri --no-rdoc

# Sinatra uses this port
EXPOSE 9292

# Copy the app into the container
ADD . /opt/playground
WORKDIR /opt/playground
RUN bundle install

CMD ["rackup"]
