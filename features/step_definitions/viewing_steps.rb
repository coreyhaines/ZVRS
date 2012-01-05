Given /^that no email addresses have been collected$/ do
  EmailAddress.destroy_all
end

When /^I go to the page that shows the email addresses$/ do
  visit email_addresses_url
end

Then /^I should see that nobody is interested yet$/ do
  page.should have_content("Sorry, nobody is interested, yet")
end

