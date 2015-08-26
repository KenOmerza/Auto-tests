Feature: SERP Testing
  This Feature will test the various functions of the mast head and auto complete.

  Scenario: Search for condition by name and
  verify "Did you mean to do a name search" link
    Given I am on the Vitals Homepage
    When a search for "Diab" is submitted
    Then the DID YOU MEAN link should be visible

  Scenario: Search for doctor by name
    Given I am on the Vitals Homepage
    When "07663" is typed into the Near field
    When a search for "Todd" is submitted
    Then the results should contain "Dr. Todd D Pascarelli"
    When the result "Dr. Todd D Pascarelli" is clicked
