Given /^I am on the home page$/ do
 visit("/saps/index")
end

When(/^I click the button products list$/) do
  click_on "Product list"
end

Then(/^I should see the list of pro$/) do
  expect(page).to have_content("Product")
end
