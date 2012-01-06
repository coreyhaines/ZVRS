require 'spec_helper'

describe Lead do
  let(:valid_attr){{}}
  it "can add another signup" do
    lead = Lead.new valid_attr
    lead.signup_count = 0
    lead.add_another_signup!
    lead.signup_count.should == 1
  end
end
