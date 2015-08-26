#Given

#When
When(/^the result "(.*?)" is clicked$/) do |target|
  within(find(:id, "results-content"))do
      click_link(target)
  end

end


#Then
Then(/^the DID YOU MEAN link should be visible$/) do
  expect(page).to have_css('#name_search_sentence')
end

Then(/^the results should contain "(.*?)"$/) do |result|
  results = find(:id, "results-content")
  expect(results).to have_text(result)
end
