require 'spec_helper'

describe EmailAddressesController do

  describe "GET 'index'" do
    it "assigns all the email addresses" do
      addresses = [stub_model(EmailAddress)]
      EmailAddress.stub(:all) { addresses }
      get :index
      assigns[:addresses].should == addresses
    end
  end

end
