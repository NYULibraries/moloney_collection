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

  def nav_link(link_text, link_path)
    class_name = 'active' if request.url.include?(link_path)
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

end
