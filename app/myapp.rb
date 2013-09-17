require "rubygems"
require "sinatra/base"

class MyApp < Sinatra::Base

  get '/' do
    #'Hello, nginx and unicorn!'
    erb :index
  end

end
