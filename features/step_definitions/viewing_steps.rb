Given /^that no email addresses have been collected$/ do
  Lead.destroy_all
end

Given /^that (\d+) email addresses have been collected$/ do |number_of_leads|
  number_of_leads.to_i.times do |index|
    Lead.create address: "foo#{index}@example.com"
  end
end

When /^I go to the page that shows the email addresses$/ do
  visit leads_url
end

Then /^I should see that nobody is interested yet$/ do
  page.should have_content("Sorry, nobody is interested, yet")
end

Then /^I should see the collected email addresses$/ do
  leads = Lead.all
  leads.each do |lead|
    page.should have_content(lead.address)
  end

  if leads.any?
    page.should_not have_content("Sorry, nobody is interested, yet")
  end
end

