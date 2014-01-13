require 'rack/test'
require File.join(File.dirname(__FILE__), '../app', 'myapp.rb')

module RSpecMixin
    include Rack::Test::Methods
    def app() MyApp end
end

RSpec.configure { |c| c.include RSpecMixin }
