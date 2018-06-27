class Homepage

  # page object model
  START_PAGE_SKIP = 'com.socialnmobile.dictapps.notepad.color.note:id/btn_skip'
  HOME_PAGE_TITLE = 'com.socialnmobile.dictapps.notepad.color.note:id/empty'
  COLOR_NOTE_LOGO = 'com.socialnmobile.dictapps.notepad.color.note:id/logo_image'

  def initialize(driver)
    @driver = driver
  end

  def click_skip
    @driver.alert_click('Skip')
  end

  def check_home_page
    @driver.find(:id, COLOR_NOTE_LOGO).displayed?
  end

end
