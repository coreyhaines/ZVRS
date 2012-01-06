# def lead
#   @lead
# end
# 
# def lead=(lead)
#   @lead = lead
# end

Given /^I want to show interest in your product$/ do
  visit new_lead_url
end

When /^I give my contact information$/ do
  fill_in "Email address", :with => "interested@example.com"
  click_button "I'm interested in being spammed"
end

Then /^I should be thanked for my interest$/ do
  page.should have_content("Thanks for showing interest, interested@example.com. You will be spamed")
end

Given /^a specific lead has brought (\d+) signups$/ do |signup_count|
  lead = Lead.create email: "foo@example.com"
  signup_count.to_i.times do 
    lead.add_another_signup!
  end
end

Then /^I should see that lead has brought (\d+) signups$/ do |signup_count|
  lead = Lead.last
  within("#signups_lead_#{lead.id}") do
    page.should have_content(signup_count)
  end
end
