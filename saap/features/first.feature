Feature: Get the list of Products
	In order to know the products available in the list
	As  an user
	I want to get the products available in the list.

	Scenario: Products list
		Given I am on the home page
		When I click the button products list
		Then I should see the list of products	


