#Given
Given(/^I am on the LifeWise webpage$/) do
  visit('https://lifewise:mdxdev123@uat.lifewise.vitalschoice.com/idp/auth')
end

#When
When(/^I log in as "(.*?)"$/) do |login|
  find(:id, 'username').select login.downcase
  click_button('Login')
end


When(/^I click on "(.*?)" card$/) do |panelText|
    tested = findCorrectCard(panelText)
    tested.hover
    tested.click
end

When(/^I search for "(.*?)"$/) do |query|
  fill_in 'globalSearchMain_query' , :with => query
  click_button('globalSearchMain_submit')
end

#Then
Then(/^I should see the "(.*?)" Panel$/) do |panelName|
  expect(page).to have_text(panelName)
end

Then(/^I should see "(.*?)"$/) do |result|
  expect(find(:css,'.content')).to have_text(result)
end
