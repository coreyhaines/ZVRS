require 'spec_helper'

describe LeadsController do

  describe "GET 'index'" do
    it "assigns all the email leads" do
      leads = [stub_model(Lead)]
      Lead.stub(:all) { leads }
      get :index
      assigns[:leads].should == leads
    end
  end

end
