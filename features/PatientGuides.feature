Feature: Patient Guide Testing

Scenario: Verify Legacy Format
  Given I am on a legacy patient guide
  Then the "Overview" breadcrumb should be visible

Scenario: Verify New Guide Format
  Given I am on a newer patient guide
  Then the "Breast Cancer" breadcrumb should be visible
