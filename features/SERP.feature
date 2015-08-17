Feature: SERP Testing
  This Feature will test the various functions of the mast head and auto complete.

  Scenario: Search for condition by name and
  "Did you mean to do a name search" link
    Given I am on the Vitals Homepage
    When I sumbit a search for "Diab"
    Then I should see a the DID YOU MEAN suggestion

  Scenario: Search for doctor by name
    Given I am on the Vitals Homepage
    When I type "07663" into the Near field
    When I sumbit a search for "Todd"
    Then I should see "Todd D Pascarelli" as a result
    When I click on "Dr. Todd D Pascarelli"
