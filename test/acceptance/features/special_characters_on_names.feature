# Automatically generated by Honest Code
# Do not edit this file as it will be overwritten

Feature: Special characters on names
  As an api client
  I want to be able to send special characters on names

  Scenario Outline: valid names on creation
    When I request creation of new blueprint with following data
      | name   | project   |
      | <NAME> | project 1 |
    Then the response status code is 201

    Examples:
      | NAME      |
      | AaAa 1    |
      | asdf-sadf |
      | asdf_sadf |
      | asdf.sadf |
