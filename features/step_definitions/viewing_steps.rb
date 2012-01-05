Given /^that no email addresses have been collected$/ do
  EmailAddress.destroy_all
end

Given /^that (\d+) email addresses have been collected$/ do |number_of_addresses|
  number_of_addresses.to_i.times do |index|
    EmailAddress.create address: "foo#{index}@example.com"
  end
end

When /^I go to the page that shows the email addresses$/ do
  visit email_addresses_url
end

Then /^I should see that nobody is interested yet$/ do
  page.should have_content("Sorry, nobody is interested, yet")
end

Then /^I should see the collected email addresses$/ do
  addresses = EmailAddress.all
  addresses.each do |address|
    page.should have_content(address.address)
  end
end

