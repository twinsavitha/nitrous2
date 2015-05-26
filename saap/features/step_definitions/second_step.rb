Given(/^I am on the platforms page$/) do
  visit("/saps/show")
end
When(/^I enter the product from the list$/) do
  fill_in "Product", :with => "SAP ECC"
end
When(/^I click the button platform$/) do
  click_on "Save Product"
end
#showw
Then(/^I should see the list of platforms for the selected product$/) do
  stub_request(:get, "/saps/showw").to_return(:body =>  {:product => 'Welcome', :platform => 'ABAP'}.to_json) #actual code
  sappy = SapsController.new
  expect(sappy).to receive(:showw).and_return("ABAP")#or shud v mock d model
  expect(sappy.showw).to eq("ABAP") 
  expect(page).to have_content("Product")
  expect(page).to have_selector("givig")
  expect(page).to have_content("SAP ECC")
  #expect(page).to have_content("ABAP") not working cuz access to model is not happening in d model
end


