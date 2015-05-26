=begin
Given(/^The name of the product and the platform$/) do  
  #Product = {"Product"=>"SAP ECC"}    #ask
  visit("/saps/showww")                                    
end
When(/^I  click the button servers$/) do                                                                                                                    click_on "Save items"                                   
end 
=end
Given(/^The name of the product and the platform$/) do  
  visit("/saps/showww")
end                                                                                                                                    
Then(/^i should click servers$/) do             
  puts ""
end                                         
Then(/^I should see available servers for the selected product and platforms$/) do
  expect(page).to have_content("Product")
end 



