Given(/^that I am at log in screen$/) do
  @pages = LoginScreen.new
  @pages.wait_login_button

end

When(/^I log in with a valid e\-mail$/) do
  @pages.tap_login_button
  @pages.tap_valid_email
end

Then(/^I go to the home page$/) do
  fail "Error - Home page isn't loaded" unless @pages.check_home_page
end

When(/^I log in with a invalid e\-mail$/) do
  @pages.tap_login_button
  @pages.tap_invalid_email
end

Then(/^it shows a message of invalid domain$/) do
  fail "Error - Incorrect message" unless @pages.check_invalid_email
end
