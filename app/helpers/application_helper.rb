module ApplicationHelper
  
  # Renders Flash Notices
  def display_flash
    [:alert,:notice].collect do |type|
      content_tag(:div, flash[type], :class => [type.to_s,"flash"]) if flash[type]
    end.compact.join("\n").html_safe
  end
  
end