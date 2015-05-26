Given(/^The nature of individual servers$/) do
  visit('/saps/sixth')
end
When(/^I click the button physical\/virtual$/) do #here in .feature p/v, in step it gave p\/v 
  click_on("physical/virtual")
end
Then(/^I should see the list of physical and virtual servers$/) do
  expect(page).to have_content("physical")
  expect(page).to have_content("virtual")
end
