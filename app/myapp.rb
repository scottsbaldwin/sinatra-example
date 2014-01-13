require 'rubygems'
require 'bundler'
Bundler.require
require "sinatra"
require "sinatra/base"

configure :development do 
  use Rack::Reloader 
end

class MyApp < Sinatra::Base

  get '/' do
    #'Hello, nginx and unicorn!'
    erb :index
  end

  get '/testing' do
    "Testing"
  end

  get '/reload2' do
    "Ok"
  end

end
