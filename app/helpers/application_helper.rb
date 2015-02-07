module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "中大懂球帝"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def flash_class(level)
    case level
      when "notice" then "alert-info"
      when "success" then "alert-success"
      when "warning" then "alert-warning"
      when "danger" then "alert-error"
    end
  end
end
