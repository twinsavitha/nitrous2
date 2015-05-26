Feature:  vcpu,vram,NetIO, IOPS, vDisk for individual server
	In order to get the details for every individual server
	As a user I have the server list for the selected product and the platform.
	I should get the vcpu,vram,NetIO, IOPS, vDisk for every individual server

	Scenario: Individual server details
	Given The list of servers
	When I click the button server details
	Then I should see the details for every individual servers