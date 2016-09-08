module Admin::CommentsHelper
  def render_comment_status(comment)
    if comment.is_hidden
      content_tag(:span, "", :class => "fa fa-lock")
    else
      content_tag(:span,"", :class => "fa fa-globe")
    end
  end
end
