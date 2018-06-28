# @open_app
Given("I can open the app") do
  homepage.click_skip
  homepage.check_home_page
end

When("I click on Add Note") do
  homepage.click_add_button
end

Then("the Add Note box opens") do
  homepage.check_add_note_box
end

# @add_text_note
And("I select Text") do
  homepage.select_text_note
end

And("I enter some text") do
  text_note_page.edit_text_note_title
  text_note_page.edit_text_note_body
end

And("I save the note") do
  text_note_page.save_text_note
  text_note_page.save_text_note
end

Then("my note can be seen on the homepage") do
  expect(homepage.check_note_displayed).to eq('Hello world!')
end


# @add_to_do_list
And("I select Checklist") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I create my to-do list") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I save the to-do list") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("my to-do list can be seen on the homepage") do
  pending # Write code here that turns the phrase above into concrete actions
end
