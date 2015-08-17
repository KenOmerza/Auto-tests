Feature: Masthead Testing
  This Feature will test the various functions of the mast head and auto complete.

  Scenario: Verify Autocompelte categories "Specialties, Doctors, Dentists, Urgent Care Centers, Pharmacies"
    Given I am on the Vitals Homepage
    When I type "Ken" in the Search field
    Then I should see the autocomplete dropdown
    Then I should see the "Specialties, Doctors, Dentists, Urgent Care Centers, Pharmacies" Category

  Scenario: Verify Autocompelte category "Conditions"
    Given I am on the Vitals Homepage
    When I type "Dia" in the Search field
    Then I should see the autocomplete dropdown
    Then I should see the "Conditions" Category

  Scenario: Autocomplete Specific Item Suggested by Zipcode: 07663
    Given I am on the Vitals Homepage
    When I type "07663" into the Near field
    When I type "Ken" in the Search field
    Then I should see "Kenneth S Conte" in the autocomplete suggestions

  Scenario: Autocomplete Specific doctor,
  add a healthcare plan that doctor does not accept,
  then confirm doctor does not exist in autosuggest.
    Given I am on the Vitals Homepage
    When I type "01011" into the Near field
    When I type "Ken" in the Search field
    Then I should see "Peter C Kenny" in the autocomplete suggestions
    When I select "BCBS Alabama" as the health company and "All" as the plan
    When I type "Peter" in the Search field
    Then I should NOT see "Peter C Kenny" in the autocomplete suggestions

  Scenario: Autocomplete Specific doctor Suggested by City Name: Saddle Brook, NJ
    Given I am on the Vitals Homepage
    When I type "Saddle Brook, NJ" into the Near field
    When I type "Ken" in the Search field
    Then I should see "Kenneth S Conte" in the autocomplete suggestions
