#When
When(/^"(.*?)" is typed into the Search field$/) do |term|
    fill_in 'q', :with => term
end

When(/^I sumbit a search for "([^"]*)"$/) do |term|
  fill_in 'q', :with => term
  click_button 'provider-go'
end

When(/^"(.*?)" is typed into the Near field$/) do |address|
  setLocation(address)
end

When(/^"(.*?)" is entered as the healthcare company and "(.*?)" as the plan$/) do |company, plan|
  selectHealthInsurance(company, plan)
end

#Then
Then(/^the category\(s\) "(.*?)" should be visible$/) do |categories|
  compareCategories(categories.split(",").map(&:strip))

end

Then(/^The autocomplete dropdown should be visible$/) do
  find(:css, "#autosuggest-dropdown")
end

Then(/^the suggestion\(s\) "(.*?)" should be visible$/) do |term|
  findInSearchAutocompelte(term)
end

Then(/^the suggestion\(s\) "(.*?)" should not be visible$/) do |term|
  verifyNotInSearchAutoCompelte(term)
end
