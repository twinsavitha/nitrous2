Given(/^I am on the platforms page$/) do
  visit("/saps/show")
end
When(/^I enter the product from the list$/) do
  fill_in "Product", :with => "SAP ECC"
end
When(/^I click the button platform$/) do
  click_on "Save Product"
end
Then(/^I should see the list of platform for the selected product$/) do
  expect(page).to have_content("Product")
end


