Feature: Test UAT LifeWise Users

  Scenario: Login as LifeWise UAT as McQuain and
  navigate Medical Care -> Specialist -> Pediatrician
  and find Cathy G Wilkinson, MD.
    Given I am on the LifeWise webpage
    When I log in as "McQuain"
    Then I should see the "Find the care you need" Panel
    #Iteration 1 of steps
    When I click on "Medical Care" card
    Then I should see the "Medical Care" Panel
    #Iteration 2 of steps
    When I click on "Specialist" card
    Then I should see the "Specialist" Panel
    #Iteration 3 of when step
    When I click on "Pediatrician" card
    Then I should see "Cathy G Wilkinson, MD"

  Scenario: Login as LifeWise UAT as McQuain,
  Search for Cathy G Wilkinson and confirm results
  Given I am on the LifeWise webpage
  When I log in as "McQuain"
  Then I should see the "Find the care you need" Panel
  When I search for "Cathy G Wilkinson"
  Then I should see "Cathy G Wilkinson, MD"
