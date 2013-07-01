require 'spec_helper'

describe RoutesController do
  it "saves routes" do
    post :create, uuid: SecureRandom.hex, locations: [[0, 50.0496957, 19.9382471]]
    response.status.should == 200
  end
end
