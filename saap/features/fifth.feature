Feature: Catalog for every individual server 
		In order to get the catalog for individual server
		As a user I have the server details for every individual servers
		I should get the catalog for the individual servers.

		Scenario: Catalog values
		Given The list of servers along with thier details
		When I click button catalog 
		Then I should see the catalog for the individual servers

