class TextNotePage

  #pom
  TEXT_NOTE_TITLE_FIELD = 'com.socialnmobile.dictapps.notepad.color.note:id/edit_title'
  TEXT_NOTE_BODY_FIELD = 'com.socialnmobile.dictapps.notepad.color.note:id/edit_note'
  SAVE_BUTTON = 'com.socialnmobile.dictapps.notepad.color.note:id/back_btn'

  def initialize(driver)
    @driver = driver
  end

  def edit_text_note_title
    @driver.find_element(:id, TEXT_NOTE_TITLE_FIELD).send_keys("Hello world!")
  end

  def edit_text_note_body
    @driver.find_element(:id, TEXT_NOTE_BODY_FIELD).send_keys("OOH AH LOOV CHEESE")
  end

  def save_text_note
    @driver.find_element(:id, SAVE_BUTTON).click
  end
end
