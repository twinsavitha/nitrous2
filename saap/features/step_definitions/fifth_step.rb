Given(/^The list of servers along with thier details$/) do
  visit("/saps/fifth")
end
When(/^I click button catalog$/) do
  click_on("catalog")
end

Then(/^I should see the catalog for the individual servers$/) do
  @array_check=[
{"server"=>"Application Server", "vcpu"=>12, "vram"=>63, "netio"=>8125, "iops"=>0, "disk"=>200},
{"server"=>"Database Server", "vcpu"=>7, "vram"=>34, "netio"=>4375, "iops"=>30000, "disk"=>1200},
{"server"=>"SCS Server", "vcpu"=>6, "vram"=>31, "netio"=>4063, "iops"=>0, "disk"=>200}]
  sappy = SapsController.new
  expect(sappy).to receive(:fifth).and_return(@array_check)
  expect(sappy).to receive(:cpu).and_return(8)
  expect(sappy).to receive(:ram).and_return(32)
  catalog = ["ExtraLarge1","Large2","Large1"]
  expect(sappy).to receive(:dispp).and_return(catalog)
  expect(sappy.dispp).to eq(["ExtraLarge1","Large2","Large1"])
  expect(page).to have_content("catalog")
end
