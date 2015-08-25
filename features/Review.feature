Feature: Review Testing
Test the Vitals Reviews pages
# Valid inputs for Given step are:
# 1. Doctor
# 2. Dentist
# 3. Urgent Care Facility
# 4. Pharmacy

  Scenario: Doctor Review (Desktop)
  Given I am on the review page for a "Doctor"
  Then I should expect to see "Bedside Manner" rating option

  Scenario: Doctor Review (Mobile)
  Given I am on the review page for a "Doctor" on a mobile device
  Then I should expect to see "Bedside Manner" rating option

  Scenario: Dentist Review (Desktop)
  Given I am on the review page for a "Dentist"
  Then I should expect to see "Comfortable Office" rating option

  Scenario: Dentist Review (Mobile)
  Given I am on the review page for a "Dentist" on a mobile device
  Then I should expect to see "Comfortable Office" rating option


  Scenario: Urgent Care Facility Review (Desktop)
  Given I am on the review page for a "Urgent Care Facility"
  Then I should expect to see "How well did the medical staff address your needs?" rating option

  Scenario: Urgent Care Facility Review (Mobile)
  Given I am on the review page for a "Urgent Care Facility" on a mobile device
  Then I should expect to see "How well did the medical staff address your needs?" rating option


  #Scenario: Pharmacy Review
  #Given I am on the review page for a "Pharmacy"
  #Then I should expect to see "Was your prescription processed correctly?" rating option
