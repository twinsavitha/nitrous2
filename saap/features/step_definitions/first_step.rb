
Given /^I am on the home page$/ do
  @quick = FactoryGirl.create(:quicksizer) # fake record for quicksizer table
  expect(QuickSizer.count).to eq 1
  visit("/saps/index")
  #expect(response).to have_http_status(209)
end

When(/^I click the button products list$/) do
  click_on "Product list"
end
#show
Then(/^I should see the list of products$/) do
  pro = [{product: "SAP ECC", platform: "ABAP" },{product: "SAP Content Server", platform: "STANDALONE" } ] 
  #stubbing show method to return pro
  sappy = SapsController.new
  expect(sappy).to receive(:show).and_return(pro)
  expect(sappy.show).to eq(pro)                      #check if the stub works correctly
  expect(sappy).to receive(:show).and_return(@user)  #stubbing show method to return d factory created
  expect(sappy.show).to eq(@user)
  expect(page).to have_content("Product")
  expect(page).to have_content("Platform")  
  #expect(response).to render_template(:show) 
  #Calculator.should_receive(:annual_revenue).with(year: 5).and_return 520
  #sappy.show.should == "trying"
  #report.weekly_revenue.should == 10 # 520/52
  #SapsController.should_receive(:show).and_return("trying")
  #stub_request(:get, "/saps/show").to_return(:body =>  {:product => 'Welcome', :platform => 'ABAP'}.to_json)
  #expect(page).to have_content("trying")
  #expect(page).to have_content("Welcome")
  #call to function(expect(page).to have_content) hea and value inside braces i.e. "Product" from feature page as a parameter 
end
