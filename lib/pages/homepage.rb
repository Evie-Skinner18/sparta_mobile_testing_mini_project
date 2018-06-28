class Homepage

  # page object model
  START_PAGE_SKIP = 'com.socialnmobile.dictapps.notepad.color.note:id/btn_skip'
  HOME_PAGE_TITLE = 'com.socialnmobile.dictapps.notepad.color.note:id/empty'
  COLOR_NOTE_LOGO = 'com.socialnmobile.dictapps.notepad.color.note:id/logo_image'
  ADD_NOTE_BUTTON = 'com.socialnmobile.dictapps.notepad.color.note:id/main_btn1'
  ADD_TEXT_NOTE_OPTION = 'com.socialnmobile.dictapps.notepad.color.note:id/text'
  NEW_NOTE_ON_HOMEPAGE = 'com.socialnmobile.dictapps.notepad.color.note:id/title'
  # @new_note_text = 'Hello world!'

  def initialize(driver)
    @driver = driver
  end

  def click_skip
    @driver.alert_click('Skip')
  end

  def check_home_page
    $driver.background_app(1)
    @driver.find(COLOR_NOTE_LOGO).displayed?
  end

  def click_add_button
    @driver.find_element(:id, ADD_NOTE_BUTTON).click
  end

  def check_add_note_box
    @driver.find_element(:id, ADD_TEXT_NOTE_OPTION).displayed?
  end

  def select_text_note
    @driver.find_element(:id, ADD_TEXT_NOTE_OPTION).click
  end

  def check_note_displayed
    @driver.find_element(:id, NEW_NOTE_ON_HOMEPAGE).text
  end

end
