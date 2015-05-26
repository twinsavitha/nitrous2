Given(/^The list of servers$/) do
  visit("/saps/fourth")
end
When(/^I click the button server details$/) do
	expect(page).to have_content("Components")
  click_on("Server details")
end
Then(/^I should see the details for every individual servers$/) do
  # stub all vcpu,vram methods here. And then expect d function to return the correct value.
   sappy = SapsController.new
   @components = ["Application Server", "Database Server", "SCS Server"]
  expect(sappy).to receive(:fourth).and_return(@components)
  expect(sappy).to receive(:vcpu).and_return(20)
  expect(sappy.vcpu).to eq(20)  #here vcpu value is getting mocked. Dat is why vcpu is set to 20  (mockd such dat it dosn have to run thru d whole code of finnding the vcpu value)(actual value of vcpu is 6 for "SAP ECC")
  pro = [{"server"=>"Application Server", "vcpu"=>20, "vram"=>63, "netio"=>8125, "iops"=>0, "disk"=>200}, {"server"=>"Database Server", "vcpu"=>20, "vram"=>34, "netio" => 4375, "iops"=>30000, "disk"=>1200}, {"server"=>"SCS Server", "vcpu"=>20, "vram"=>31, "netio"=>4063, "iops"=>0, "disk"=>200}]
  expect(sappy.disp).to eq(pro)
  expect(page).to have_content("vcpu")
end


