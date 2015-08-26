Feature: Pharmacy Testing
This test will use the Wal-Mart Pharmacy
that resides at 200 Otis St Northborough, MA

Scenario: Verify the street address and ad sizes.
	Given I am on the Pharmacy's Summary Page
	Then the street address "200 Otis St" should be visible
	And I should see the ads

Scenario: Clicking on the Facilities Service icon should scroll the page
down to the Facilities Service panel
	Given I am on the Pharmacy's Summary Page in a mobile browser
	When the Facilities Service icon is clicked
	Then the Facility Services panel should be visible

	Scenario: Navigate to pages of the Pharmacy Profile
		Given I am on the Pharmacy's Summary Page
		When the Patient Reviews link is clicked
		Then the Write a Review panel should be visible
		When the Contact & Directions Link is clicked
		Then the Contact Pharmacy panel should be visible
