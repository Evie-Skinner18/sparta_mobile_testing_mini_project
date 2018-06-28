class Homepage

  # page object model
  START_PAGE_SKIP = 'com.socialnmobile.dictapps.notepad.color.note:id/btn_skip'
  HOME_PAGE_TITLE = 'com.socialnmobile.dictapps.notepad.color.note:id/empty'
  COLOR_NOTE_LOGO = 'com.socialnmobile.dictapps.notepad.color.note:id/logo_image'
  ADD_NOTE_BUTTON = 'com.socialnmobile.dictapps.notepad.color.note:id/main_btn1'
  ADD_TEXT_NOTE_OPTION = 'com.socialnmobile.dictapps.notepad.color.note:id/text'

  def initialize(driver)
    @driver = driver
  end

  def click_skip
    @driver.alert_click('Skip')
    puts "skip button clicked!"
  end

  def check_home_page
    $driver.background_app(1)
    @driver.find(COLOR_NOTE_LOGO).displayed?
    puts "homepage found!"
  end

  def click_add_button
    @driver.find_element(:id, ADD_NOTE_BUTTON).click
    puts "add button clicked!"
  end

  def check_add_note_box
    @driver.find_element(:id, ADD_TEXT_NOTE_OPTION).displayed?
  end

end
