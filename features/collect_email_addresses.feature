Feature: Providing my email address to show interest in the product
  In order to show interest in your product
  As a person who is interested
  I want to enter my email address

  Scenario: Entering my email address and seeing the configuration page
    Given I want to show interest in your product
    When I give my contact information
    Then I should be thanked for my interest

#Feature: Collecting the email addresses of leads
#  In order to send product information
#  As a product developer
#  I want to collect email addresses of interested parties
