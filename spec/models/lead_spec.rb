require 'spec_helper'

describe Lead do  
  it "should return 5 for number of signups if lead has 5 signups" do
    lead = Lead.new
    5.times do 
      lead.add_another_signup!
    end
    lead.signups.should == 5
  end
end
