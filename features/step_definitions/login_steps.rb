Given(/^I am on the SNHU login page$/) do
  @loginPage.visit
  @loginPage.verify_login
end

When(/^I enter valid credentials$/) do
  @loginPage.login('valid')
  @homePage = HomePage.new(@loginPage)
end

Then(/^I am on the SNHU homepage$/) do
  @homePage.verify_homepage
end

When(/^I enter invalid credentials$/) do
  @loginPage.login('invalid')
end

Then(/^I should see an error message$/) do
  @loginPage.verify_login_error
end