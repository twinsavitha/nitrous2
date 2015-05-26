Feature: List of Platforms available under each product
	In order to select the platforms under a selected product.
	As an user
	I want to get the list of platforms for the selected product.

	Scenario: Platform list
		Given I am on the platforms page
		When I enter the product from the list
		And I click the button platform
		Then I should see the list of platforms for the selected product
