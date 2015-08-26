#Given
Given(/^I am on the review page for a "(.*?)"$/) do |pageType|
  openReviewPage(pageType, "desktop")
end

Given(/^I am on the review page for a "(.*?)" on a mobile device$/) do |pageType|
  openReviewPage(pageType, "mobile")
end

#When

#Then
Then(/^the "(.*?)" rating option should be visible$/) do |ratingType|
  verifyRatingCategory(ratingType)
end
