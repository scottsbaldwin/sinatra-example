require 'spec_helper'

describe "Sinatra App" do
    it "should respond to GET" do
        get '/testing'
        last_response.should be_ok
    end

    it "should match Testing" do
        get '/testing'
        last_response.body.should match('Testing')
    end
end