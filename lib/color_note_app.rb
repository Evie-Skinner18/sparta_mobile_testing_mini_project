#the dot tells it to start looking specifically in current directory
require_relative './pages/homepage'
require_relative './pages/text_note_page'
require_relative './pages/to_do_list_page'


module ColorNoteApp

  #open the door to the Homepage class
  def homepage
    #making the driver available everywhere instead of creating an instance of it. I think.
    Homepage.new($driver)
  end

  def text_note_page
    TextNotePage.new
  end

  def to_do_list_page
    ToDoListPage.new
  end

  #open the door to the class




end #end of module
