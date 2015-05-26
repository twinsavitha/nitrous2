
Given(/^the Product and the platform$/) do
=begin
  puts "hello"
   FactoryGirl.build_stubbed(:component)
   puts "factory"
   pp FactoryGirl.build_stubbed(:component)
=end
   
   visit("/saps/third")
end
=begin
	Given /^the Product and the platform$/ do |fruits|
 	        FruitApp.data = fruits.hashes    #in the form of hashes(lik SAP ECC => ABAP)
 	end								#it will fail cuz we dont ve FruitApp class yet
=end
When(/^I click the button Item list$/) do
   click_on("Item list")
   #expect(response).to has_template(:showww)
end
Then(/^I should see the server details\.$/) do
  expect(page).to have_content("Saps")
  expect(page).to have_content("Saps")
  #last_response.body.should == json
end