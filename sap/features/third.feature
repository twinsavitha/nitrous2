Feature: Get the servers names and the corresponding values for the selected product and platforms
  As a user 
  In order to get the names of the server for the product and platform
  So I should get the list of servers for the chosen product and platform
  
  Scenario: Server names
    Given The name of the product and the platform
    Then i should click servers
    Then I should see available servers for the selected product and platforms
    