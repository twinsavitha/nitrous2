Given(/^the fields for the record$/) do

  @user = FactoryGirl.create(:component)
  expect(Component.count).to eq 1
  #@usser= FactoryGirl.build_stubbed(:sapscontroller)

end
Then(/^the name must match$/) do

  expect(@user.product).to eq("SAP ECC")
  expect(Component.count).to eq 1
  #expect(@usser.show).to match("Hello")

end