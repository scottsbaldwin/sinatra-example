require 'spec_helper'

describe "Sinatra App" do

    describe "Testing route" do

        it "should return 200" do
            get '/testing'
            last_response.should be_ok
        end

        it "should match Testing" do
            get '/testing'
            last_response.body.should match('Testing')
        end

    end

    it "should match Ok" do
        get '/reload2'
        last_response.should be_ok
        last_response.body.should match('Blah')
    end
end