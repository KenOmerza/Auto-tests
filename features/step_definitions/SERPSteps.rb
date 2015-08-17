#Given

#When
When(/^I click on "(.*?)"$/) do |target|
  within(find(:id, "results-content"))do
      click_link(target)
  end

end


#Then
Then(/^I should see a the DID YOU MEAN suggestion$/) do
  expect(page).to have_css('#name_search_sentence')
end

Then(/^I should see "(.*?)" as a result$/) do |result|
  results = find(:id, "results-content")
  expect(results).to have_text(result)
end
