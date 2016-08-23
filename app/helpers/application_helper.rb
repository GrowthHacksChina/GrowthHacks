module ApplicationHelper
  # def zone
  #     @post.created_at.strftime("%Y-%m-%d %H:%M:%S")
  #     # @issue.created_at.strftime("%Y-%m-%d %H:%M:%S")
  # end

  def render_markdown_text(text)
    text.to_markdown
  end

end
