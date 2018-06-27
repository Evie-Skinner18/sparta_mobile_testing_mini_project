Feature: I am able to make a new note
  As a user I am able to make a new note

@open_app
  Scenario: I am able to open the app
    Given I can open the app
    When I click on Add Note
    Then the Add Note box opens

@text_note
  Scenario: I am able to add a text note
    Given I can open the app
    When I click on Add Note
    Then the Add Note box opens
    And I select Text
    And I enter some text
    And I save the note
    Then my note can be seen on the homepage

@to_do_list
  Scenario: I am able to add a to-do list note
    Given I can open the app
    When I click on Add Note
    Then the Add Note box opens
    And I select Checklist
    And I create my to-do list
    And I save the to-do list
    Then my to-do list can be seen on the homepage
