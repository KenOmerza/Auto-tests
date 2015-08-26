Feature: Review Testing
Test the Vitals Reviews pages
# Valid inputs for Given step are:
# 1. Doctor
# 2. Dentist
# 3. Urgent Care Facility
# 4. Pharmacy

  Scenario: Doctor Review (Desktop)
  Given I am on the review page for a "Doctor"
  Then the "Bedside Manner" rating option should be visible

  Scenario: Doctor Review (Mobile)
  Given I am on the review page for a "Doctor" on a mobile device
  Then the "Bedside Manner" rating option should be visible

  Scenario: Dentist Review (Desktop)
  Given I am on the review page for a "Dentist"
  Then the "Comfortable Office" rating option should be visible

  Scenario: Dentist Review (Mobile)
  Given I am on the review page for a "Dentist" on a mobile device
  Then the "Comfortable Office" rating option should be visible


  Scenario: Urgent Care Facility Review (Desktop)
  Given I am on the review page for a "Urgent Care Facility"
  Then the "How well did the medical staff address your needs?" rating option should be visible

  Scenario: Urgent Care Facility Review (Mobile)
  Given I am on the review page for a "Urgent Care Facility" on a mobile device
  Then the "How well did the medical staff address your needs?" rating option should be visible


  #Scenario: Pharmacy Review
  #Given I am on the review page for a "Pharmacy"
  #Then the "Was your prescription processed correctly?" rating option should be visible
