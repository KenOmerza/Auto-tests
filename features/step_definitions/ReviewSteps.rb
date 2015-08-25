#Given
Given(/^I am on the review page for a "(.*?)"$/) do |pageType|
  openReviewPage(pageType, "desktop")
end

Given(/^I am on the review page for a "(.*?)" on a mobile device$/) do |pageType|
  openReviewPage(pageType, "mobile")
end

#When

#Then
Then(/^I should expect to see "(.*?)" rating option$/) do |ratingType|
  verifyRatingCategory(ratingType)
end
