Feature: Type of the server
	In order to get the list of phsyical/virtual servers 
	As a user I have selected if the server has to be physical or virtual
	So I should get the list of total number  of physical/virtual

	Scenario: List of physical/virtual servers
	Given The nature of individual servers
	When I click the button physical/virtual
	Then I should see the list of physical and virtual servers