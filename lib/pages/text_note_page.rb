class TextNotePage

  #pom
  TEXT_NOTE_TITLE_FIELD = 'com.socialnmobile.dictapps.notepad.color.note:id/edit_title'


  def initialize(driver)
    @driver = driver
  end

  def edit_text_note_title
    @driver.find_element(:id, TEXT_NOTE_TITLE_FIELD).send_keys("Hello world!")
  end

end
