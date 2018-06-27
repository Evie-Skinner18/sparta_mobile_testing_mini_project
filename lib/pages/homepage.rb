class Homepage

  # page object model
  START_PAGE_SKIP = '/hierarchy/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.Button'
  HOME_PAGE_TITLE = 'com.socialnmobile.dictapps.notepad.color.note:id/empty'
  COLOR_NOTE_LOGO = 'com.socialnmobile.dictapps.notepad.color.note:id/logo_image'

  def initialize(driver)
    @driver = driver
  end


  def check_home_page
    @driver.alert_accept
    # @driver.find_element(:xpath, START_PAGE_SKIP).click
    @driver.find_element(:id, COLOR_NOTE_LOGO).displayed?
  end

end
