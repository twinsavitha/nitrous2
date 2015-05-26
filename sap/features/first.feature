Feature: Get the list of Products
	As I am a user
	In order to check the products in the list 
	So I should get the products available in the list.

	Scenario: Products list
		Given I am on the home page
		When I click the button products list
		Then I should see the list of pro