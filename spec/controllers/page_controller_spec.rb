require 'spec_helper'

describe PageController do

  describe "GET 'scoreboard'" do
    it "returns http success" do
      get 'scoreboard'
      response.should be_success
    end
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

end
