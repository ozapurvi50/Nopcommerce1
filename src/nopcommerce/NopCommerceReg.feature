Feature: Nopcommerce Registration

  As a user I want to check the Register Functionality of Nopcommerce

  Background:    I am on Nopcommerce Registration page
    Given        I open the Google Chrome Browser
    When         I open the URL https://demo.nopcommerce.com/register
    Then         I am on  Nopcommerce Registration page

  Scenario Outline:  I should not be able to register with invalid data on mandatory field (*) of registration page
    When             I enter First name "<First Name>"
    And              I enter Last name "<Last Name>"
    And              I enter Email address "<Email>"
    And              I enter Password "<Password>"
    And              I enter Confirm Password "<Confirm Password>"
    And              Click on Register button
    Then             I can see error message "<error message>"
    And              I am not albe to register
    Examples:
      | First Name | Last Name | Email                | Password | Confirm Password | error message                            |
      | ""         | Oza       | ozapurvi05@gmail.com | 456897   | 456897           | please enter First Name                  |
      | Purvi      | ""        | ozapurvi05@gmail.com | 456897   | 456897           | please enter Last Name                   |
      | Purvi      | Oza       | ""                   | 456897   | 456897           | please enter Valid email                 |
      | Purvi      | Oza       | ozapurvi05@gmail.com | ""       | 456897           | Password is required                     |
      | Purvi      | Oza       | ozapurvi05@gmail.com | 456897   | ""               | Confirm Password is required             |
      | Purvi      | Oza       | ozapurvi05@gmail.com | 45689    | 456897           | minimum 6 character password is required |
      | ""         | ""        | ""                   | ""       | ""               | Mandatory (*) field us required          |

  Scenario:   I should be able to select any one radio button from Gender Label of your Personal Details section
    Given     I am on Gender label of Your personal detail section
    When      I select "Male" radio button
    And       I select "Female" radio button
    Then      I am able to select any one of the radio button

  Scenario Outline:  I should be able to select Day, Month and Year from drop down list
    Given            I am on Date of Birth field of your personam detials section
    When             I select day "<Day>"
    And              I select month "<Month>"
    And              I select year "<Year>"
    Then             I am able to select Day, Month and Year from dropdown list
    Examples:
      | Day | Month    | Year |
      | 19  | January  | 1979 |
      | 20  | February | 1980 |
      | 31  | March    | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter box on option section
    Given   I am on Newsletter lable on option section
    When    I click on Newsletter checkbox
    And     I again click on Newsletter checkbox
    Then    I was able to check and uncheck the box next to Newsletter lable

  Scenario:  I should be able to register with the valid mandatory (*) field data on registration page
    When     I enter First name "Purvi"
    And      I enter Last name "Oza"
    And      I enter Email "ozapurvi50@gmail.com"
    And      I enter Password  "456897"
    And      I enter Confirm Password "456897"
    And      I click on Register button
    Then     I was able to register successfully

