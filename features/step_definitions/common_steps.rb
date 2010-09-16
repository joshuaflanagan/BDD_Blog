Then /^I should see awesome rounded corners$/ do
  page.should have_css(".rounded")
end

Then /^I should see a list of (.*)$/ do |model|
  page.should have_css("##{model}")
end

Then "I debug" do
  debugger
end

#Given /^I am logged in as "([^\"]*)"$/ do |email|
#    Given %|I am on the homepage|
#    When %| I follow "Lgo in"|
#    When %| I fill in "Email" with #{email}
#    When %| I fill in "Password" with "#{email}"password
#    When %|I press "Log in"|
#end
