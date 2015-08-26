Feature: Masthead Testing
  Test the functionality of the masthead including the autocomplete suggestions.

  Scenario: Verify Autocomplete multiple categories exist in autocomplete suggestions.
    Given I am on the Vitals Homepage
    When "Ken" is typed into the Search field
    Then The autocomplete dropdown should be visible
    And the category(s) "Specialties, Doctors, Dentists, Urgent Care Centers, Pharmacies" should be visible

  Scenario: Verify Autocomplete a single category exist in autocomplete suggestions.
    Given I am on the Vitals Homepage
    When "Dia" is typed into the Search field
    Then The autocomplete dropdown should be visible
    And the category(s) "Conditions" should be visible

  Scenario: Verify Autocomplete suggests a specific suggestion when the zipcode
  and search are typed into the near and search fields
    Given I am on the Vitals Homepage
    When "07663" is typed into the Near field
    And "Ken" is typed into the Search field
    Then the suggestion(s) "Kenneth S Conte" should be visible

  Scenario: Verify Autocomplete suggests a specific suggestion when the city, state string
  and search are typed into the near and search fields
    Given I am on the Vitals Homepage
    When "Saddle Brook, NJ" is typed into the Near field
    And "Ken" is typed into the Search field
    Then the suggestion(s) "Kenneth S Conte" should not be visible

  Scenario: Verify Autocomplete suggests a specific doctor and
  but is removed from suggestions after adding
  an insurance plan the doctor does not accept.
    Given I am on the Vitals Homepage
    When "01011" is typed into the Near field
    And "Ken" is typed into the Search field
    Then the suggestion(s) "Peter C Kenny" should be visible
    When "BCBS Alabama" is entered as the healthcare company and "All" as the plan
    And "Peter" is typed into the Search field
    Then the suggestion(s) "Peter C Kenny" should not be visible
