module ApplicationHelper
  # def zone
  #     @post.created_at.strftime("%Y-%m-%d %H:%M:%S")
  #     # @issue.created_at.strftime("%Y-%m-%d %H:%M:%S")
  # end

  def render_markdown_text(text)
    require "redcarpet"
    text.to_markdown
  end
  # def markdown(text)
  #   require 'redcarpet'
  #   render = Redcarpet::Render::HTML
  #   options = {
  #     autolink: true,
  #     filter_html: true,
  #     fenced_code_blocks: true,
  #     no_intra_emphasis: true
  #   }
  #   markdown = Redcarpet::Markdown.new(render.new(hard_wrap: true), options)
  #   markdown.render(text).html_safe
  #   end

  def gender_type
    if @user.gender == "true"
      "Male"
    elsif @user.gender == "false"
     "Female"
    else
      ""
    end
  end
end
