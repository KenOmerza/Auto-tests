#When
When(/^I type "(.*?)" in the Search field$/) do |term|
    fill_in 'q', :with => term
end

When(/^I sumbit a search for "([^"]*)"$/) do |term|
  fill_in 'q', :with => term
  click_button 'provider-go'
end

When(/^I type "(.*?)" into the Near field$/) do |address|
  setLocation(address)
end

When(/^I select "(.*?)" as the health company and "(.*?)" as the plan$/) do |company, plan|
  selectHealthInsurance(company, plan)
end

#Then
Then(/^I should see the "(.*?)" Category$/) do |categories|
  compareCategories(categories.split(",").map(&:strip))

end

Then(/^I should see the autocomplete dropdown$/) do
  find(:css, "#autosuggest-dropdown")
end

Then(/^I should see "(.*?)" in the autocomplete suggestions$/) do |term|
  findInSearchAutocompelte(term)
end

Then(/^I should NOT see "(.*?)" in the autocomplete suggestions$/) do |term|
  verifyNotInSearchAutoCompelte(term)
end
