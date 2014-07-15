require "rubygems"
require "bundler"
require 'fileutils'

Bundler.require

require './app/myapp.rb'
FileUtils.touch('/tmp/app-initialized')
run MyApp
