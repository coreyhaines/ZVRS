require 'spec_helper'

describe EmailLeadsController do

  describe "POST create" do
    it "redirects to the show page for the created lead" do
      lead = stub_model(Lead)
      Lead.stub(:create) { lead }
      post :create, :lead => {}
      response.should redirect_to(lead_url(lead))
    end
  end
  
  describe "GET show" do
    it "assigns the desired lead" do      
      lead = stub_model(Lead)
      Lead.stub(:find).with(lead.id.to_s) { lead }
      get :show, :id => lead.id.to_s
      assigns[:lead].should == lead      
    end
  end
  
  # describe "POST create" do
  #   it "redirects to the show page for the created lead and increases signups count by 1" do
  #     lead = stub_model(Lead)
  #     Lead.stub(:create) { lead }
  #     post :create, :lead => {}
  #     response.should redirect_to(lead_url(lead))
  #   end    
  # end
end
