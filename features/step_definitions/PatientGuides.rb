#Given
Given(/^I am on a legacy patient guide$/) do
  openPage("http://www.vitals.com/patient-education/lupus", "desktop")
end

Given(/^I am on a newer patient guide$/) do
  openPage("http://www.vitals.com/patient-education/breast-cancer", "desktop")
end

#When

#Then
Then(/^the "(.*?)" breadcrumb should be visible$/) do |breadcrumb|
  verifyCurrnetBreadCrumb(breadcrumb)
end
