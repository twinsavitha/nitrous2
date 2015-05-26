Feature: To get the servername, saps, io, memory, iops, disksize for the product and platform chosen
	In order to get the server names
	As a user I select the product and the platform 
	So I should get the server names, saps, io, memory, iops and disksize for the chosen product and platform.

	Scenario: Server details
	Given the Product and the platform
      # |product  |platform  |
      # |SAP ECC  |ABAP	    |
      # |NetWeaver|JAVA      |




	When I click the button Item list
	Then I should see the server details.  




