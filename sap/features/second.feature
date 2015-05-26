Feature: Get the list of Platforms for the selected products
	As I am a user
	In order to check the platforms for the selected product.
	So I should get the list of platforms for the selected product.

	Scenario: Platform list
		Given I am on the platforms page
		When I enter the product from the list
		And I click the button platform
		Then I should see the list of platform for the selected product
