Feature: create an activity
  In order to keep track of the acitivities of a customer
  As a user
  I want to create a new activity

  Background:
    Given there is a customer called "Andrea Rossi"

  Scenario: create a valid activity
    Given I am on the page of the activities
    When I click on "New Activity"
    And I fill in the form with valid data
    Then I am on the page of the activities
    And I should see the new activity in the list

  Scenario: error when entering invalid data
    Given I am on the page of the activities
    When I click on "New Activity"
    And I fill in the form with an invalid data
    Then I should see an error
