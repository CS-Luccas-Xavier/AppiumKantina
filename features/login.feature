# language: en
Feature: Log in to App

Scenario: Log in with a valid e-mail
  Given that I am at log in screen
  When I log in with a valid e-mail
  Then I go to the home page

Scenario: Log in with a invalid e-mail
  Given that I am at log in screen
  When I log in with a invalid e-mail
  Then it shows a message of invalid domain 
