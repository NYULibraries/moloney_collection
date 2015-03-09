module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Mick Moloney Collection"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def bgimg(page_bg = '')
    base_bg = image_path("home_header.jpg")
    if page_bg.empty?
      base_bg
    else
      "#{base_bg}"
    end
  end

  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

end
