Feature: I am able to edit my existing notes
  As a user I am able to edit my existing notes

  @edit_text_note
    Scenario: I can edit my text note
      Given that I am on the page of my text note
      And I click the edit button
      And I enter some new text
      And I save my edited note
      Then I should see my updated note on the homepage

  @add_item_to_list
    Scenario: I can add a to-do to my checklist
      Given that I am on the page of my checklist
      And I click add item
      And I enter a new to-do
      And I save my edited checklist
      Then I should see that new to-do on my checklist page

  @delete_item_from_list
    Scenario: I can delete a to-do from my checklist
      Given that I am on the page of my checklist
      And I click the edit button
      And I click the delete button next to an item
      And I save my edited checklist
      Then I should see my updated checklist on my checklist page
