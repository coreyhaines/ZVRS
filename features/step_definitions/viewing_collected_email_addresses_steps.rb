Given /^that no email addresses have been collected$/ do
  Lead.destroy_all
end

Given /^that (\d+) email addresses have been collected$/ do |number_of_leads|
  number_of_leads.to_i.times do |index|
    Lead.create email: "foo#{index}@example.com"
    # puts "foo#{index}@example.com lead created"
  end
end

When /^I go to the page that shows the email addresses$/ do
  visit email_leads_url
end

Then /^I should see that nobody is interested yet$/ do
  page.should have_content("Sorry, nobody is interested, yet")
end

Then /^I should see the collected email addresses$/ do
  Lead.all.each do |lead|
    puts lead.email
    page.should have_content(lead.email)
  end  
end