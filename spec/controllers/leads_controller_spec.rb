require 'spec_helper'

describe LeadsController do
  let(:lead) { stub_model(Lead)}

  describe "GET 'index'" do
    it "assigns the leads variable" do
      Lead.stub(:all){ [lead] }
      get :index
      assigns[:leads].should == [lead]
    end
  end

  describe "GET 'new'" do
    it "assigns the lead variable" do
      get :new
      assigns[:lead].should be_kind_of(Lead)
    end
  end

  describe "POST 'create'" do
    it "redirects to show" do
      Lead.stub(:create){ lead }
      post :create, :lead => {}
      response.should redirect_to lead_url(lead)
    end
  end

  describe "GET 'show'" do
    it "assigns the lead variable" do
      Lead.stub(:find){ lead }
      get :show, :id => lead
      assigns[:lead].should == lead
    end
  end
end
