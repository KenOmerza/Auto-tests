Feature: Test functionality of the Pharmacy Summary pages
This test will use the Wal-Mart Pharmacy
that resides at 200 Otis St Northborough, MA


Scenario: Scroll of the Facilities Service Icon
	Given I am on the Pharmacy's Summary Page in a mobile browser
	When I click on the Facilities Service Icon
	Then I should see the Facility Services panel

	Scenario: Navigate to Pharmacy's Summary Page
		Given I am on the Pharmacy's Summary Page
		Then I should see the expected street "200 Otis St"
		Then I should see the ads

	Scenario: Navigate to other tabs
		Given I am on the Pharmacy's Summary Page
		When I click on the Patient Reviews Link
		Then I should see the Write a Review Panel
		When I click on the Contact & Directions Link
		Then I should see the Contact Pharmacy Panel
