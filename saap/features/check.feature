Feature: Factory checking
  In order to enter a record into the database
  As a user
  I create a record and validate the same

  Scenario: Checking Factory
  	Given the fields for the record
  	Then the name must match
