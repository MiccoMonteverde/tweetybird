module ApplicationHelper
  def page_title(title = "")
    return if title.blank?

    title = title.titleize
    content_for :title, title
    tag.h1 title
  end
end
