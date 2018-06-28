class ToDoListPage

  #pom
  CHECKLIST_TITLE_FIELD = 'com.socialnmobile.dictapps.notepad.color.note:id/edit_title'
  SAVE_BUTTON = 'com.socialnmobile.dictapps.notepad.color.note:id/back_btn'
  ADD_TO_DO_BUTTON_CLASS = 'android.widget.LinearLayout'
  TO_DO_TEXT_FIELD = 'com.socialnmobile.dictapps.notepad.color.note:id/edit'

  def initialize(driver)
    @driver = driver
  end

  def edit_checklist_title
    @driver.find_element(:id, CHECKLIST_TITLE_FIELD).send_keys("Cheese Party")
  end

  def add_a_to_do
    @driver.find_elements(:class, ADD_TO_DO_BUTTON_CLASS)[0].click
    puts "Add to-do button clicked!"
    @driver.find_element(:id, TO_DO_TEXT_FIELD).send_keys("Buy Roquefort")
  end


end
