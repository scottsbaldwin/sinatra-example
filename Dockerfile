FROM ruby:2.1.5

ADD ./Gemfile /tmp/Gemfile
ADD ./Gemfile.lock /tmp/Gemfile.lock
RUN bundle install

ADD . /srv/app
WORKDIR /srv/app
EXPOSE 9292
CMD rackup
