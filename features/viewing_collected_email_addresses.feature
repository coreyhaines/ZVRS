Feature: Viewing the captured email address
  In order to send a notification email to interested parties
  As a marketing person
  I want to see the list of captured email addresses


  Scenario: No email addresses have been collected, should see a message for it
    Given that no email addresses have been collected
    When I go to the page that shows the email addresses
    Then I should see that nobody is interested yet

  Scenario: Seeing the collected email addresses in a list
    Given that 5 email addresses have been collected
    When I go to the page that shows the email addresses
    Then I should see the collected email addresses
