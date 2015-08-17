#Steps for "pharmacySummary.feature"
#helper methods in pharmacy_helpers.rb

#Given
Given(/^I am on the Pharmacy's Summary Page$/) do
  openPage('http://www.vitals.com/pharmacy/wal-mart-pharmacy-200-otis-st-northborough-ma', "desktop")
  sleep(3)
end

Given(/^I am on the Pharmacy's Summary Page in a mobile browser$/) do
    openPage('http://www.vitals.com/pharmacy/wal-mart-pharmacy-200-otis-st-northborough-ma', "mobile")
end

#When

When(/^I click on the Patient Reviews Link$/) do
  click_link('Reviews')
  sleep(5)
end

When(/^I click on the Contact & Directions Link$/) do
  click_link('Contact & Directions')
  sleep(5)
end

When(/^I click on the Facilities Service Icon$/) do
  find(:css,".badge").click
  sleep(3)
end

#Then

Then(/^I should see the expected street "([^"]*)"$/) do |address|
  expect(page).to have_content(address)
end

Then(/^I should see the Facility Services panel$/) do
  expect(page).to have_css('#facility-services')
end

Then(/^I should see the Write a Review Panel$/) do
  expect(page).to have_css('#submit-review')
end

Then(/^I should see the Contact Pharmacy Panel$/) do
  expect(page).to have_css('.list')
end

Then(/^I should see the ads$/) do
    verifyads
end
