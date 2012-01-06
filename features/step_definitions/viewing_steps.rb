Given /^that no email addresses have been collected$/ do
  Lead.destroy_all
end

When /^I go to the page that shows the email addresses$/ do
  visit leads_url
end

Then /^I should see that nobody is interested yet$/ do
  page.should have_content("We are sorry, nobody is interested, but don't take it personally")
end

Given /^that (\d+) email addresses have been collected$/ do |number_of_leads|
  number_of_leads.to_i.times do |index|
    Lead.create email_address: "foo#{index}@example.com"
  end
end

Then /^I should see the collected email addresses$/ do
  Lead.all.each do |lead|
    page.should have_content(lead.email_address)
  end
end

Given /^a specific lead has brought (\d+) signups$/ do |signup_count|
  @lead = Lead.create email_address: "foo@example.com"
  signup_count.to_i.times do
    @lead.add_another_signup!
  end
end

Then /^I should see that lead has brought (\d+) signups$/ do |signup_count|
  within("#signups_lead_#{@lead.id}") do
    page.should have_content(signup_count)
  end
end
