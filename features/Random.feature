Feature: Search From Main Page
	As a visitor
	I want to be able to see the doctors with a name like my search term
	So I can find a specific doctor

	Scenario: Autocomplete Specific doctor Suggested by City Name: Pittsfield, MA
    Given I am on the Vitals Homepage
    When I type "01011" into the Near field
    When I type "Ken" in the Search field
    Then I should see "Peter C Kenny" in the autocomplete suggestions

  Scenario: Autocomplete Specific doctor Suggested by City Name: Saddle Brook, NJ
    Given I am on the Vitals Homepage
    When I type "Saddle Brook, NJ" into the Near field
    When I type "Cardio" in the Search field
    Then I should see "Cardiothoracic Surgeon" in the autocomplete suggestions
