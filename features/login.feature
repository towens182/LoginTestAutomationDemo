Feature: SNHU Website has a login feature

  A student or faculty member would like to SNHU news, courses, Blackboard etc.
  Provided they have a valid username and password, they will be logged into mySNHU.

  Background:
    Given I am on the SNHU login page

    Scenario: Valid Login
      When I enter valid credentials
      Then I am on the SNHU homepage

    Scenario: Invalid Login
      When I enter invalid credentials
      Then I should see an error message



