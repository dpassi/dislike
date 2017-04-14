module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Dislike"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def active_class(c, i)
    current_page?(controller: c, action: i) ? "active" : ""
  end

end
