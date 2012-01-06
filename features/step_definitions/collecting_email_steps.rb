Given /^I want to show interest in your product$/ do
  visit new_lead_url
end

When /^I give my contact information$/ do
  fill_in "Email address", :with => 'interested@example.com'
  click_button "I'm interested"
end

Then /^I should be thanked for my interest$/ do
  page.should have_content("Thanks for showing interest, interested@example.com")
end
