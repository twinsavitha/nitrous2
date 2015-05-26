WebMock.allow_net_connect! # for http thg to work
#WebMock.disable_net_connect!(:allow => "www.example.com")
Given(/^check for the content$/) do 
  #stub_request(:any, "/sap/index").to_return(:status => [500, "Internal Server Error"])
  #stub_request(:post, "/saps/index").with(:body => {:data => {:a => '1', :b => 'five'}})
  
#stub_request(:post, "www.example.com"). with(:body => /^.*world$/, :headers => {"Content-Type" => /image\/.+/}).to_return(:body => "abc")
     #stub_request(:post, "www.example.com").with(:body => "abc", :headers => { 'Content-Length' => 3 })
  #stub_request(:get, "/saps/ssup").to_return(:body => "Nothing") #actual code
  Net::HTTP.get("www.example.com", "/") #for this to work jus add WebMock.allow_net_connect! as shown
  puts "working"
end 