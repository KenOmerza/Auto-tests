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

When(/^the Patient Reviews link is clicked$/) do
  click_link('Reviews')
  sleep(5)
end

When(/^the Contact & Directions Link is clicked$/) do
  click_link('Contact & Directions')
  sleep(5)
end

When(/^the Facilities Service icon is clicked$/) do
  find(:css,".badge").click
  sleep(3)
end

#Then

Then(/^the street address "(.*?)" should be visible$/) do |address|
  expect(page).to have_content(address)
end

Then(/^the Facility Services panel should be visible$/) do
  expect(page).to have_css('#facility-services')
end

Then(/^the Write a Review panel should be visible$/) do
  expect(page).to have_css('#submit-review')
end

Then(/^the Contact Pharmacy panel should be visible$/) do
  expect(page).to have_css('.list')
end

Then(/^I should see the ads$/) do
    verifyads
end
