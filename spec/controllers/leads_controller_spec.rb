require 'spec_helper'

describe LeadsController do

  describe "GET 'index'" do
    it "assigns the leads variable" do
      lead = stub_model(Lead)
      Lead.stub(:all){ [lead] }
      get :index
      assigns[:leads].should == [lead]
    end
  end

end
