class Movie < ActiveRecord::Base

  def button_title
    if title.length < 25
      button_title = title
    else
      button_title = title[0, 24] + "..."
    end
    button_title
  end
  
end
