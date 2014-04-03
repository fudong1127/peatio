require 'spec_helper'

describe APIv2::Auth do

  context '#generate_access_key' do
    it "should be a string longer than 40 characters" do
      APIv2::Auth.generate_access_key.should match(/^[a-zA-Z0-9]{40}$/)
    end
  end

  context '#generate_secret_key' do
    it "should be a string longer than 40 characters" do
      APIv2::Auth.generate_secret_key.should match(/^[a-zA-Z0-9]{40}$/)
    end
  end

end
