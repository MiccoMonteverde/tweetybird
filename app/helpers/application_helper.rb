module ApplicationHelper
  def page_title(title = "")
    return if title.blank?

    title = title.titleize
    content_for :title, title
    tag.h1 title
  end

  def full_title(app_name)
    tag.title(content_for?(:title) ? "#{content_for :title} | #{app_name}" : app_name)
  end
end
