class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_breadcrumbs

  def require_is_admin
    unless current_user.admin?
      flash[:alert] = "You are not admin"
      redirect_to root_path
    end
  end

  def drop_breadcrumb(title = nil, url = nil)
    title ||= @page_title

    if title && url
      @breadcrumbs.push(view_context.link_to(title, url))
    elsif title
      @breadcrumbs.push(title)
    end
  end

  def set_breadcrumbs
    @breadcrumbs = ["<a href='/'>首页</a>".html_safe]
  end

  def set_admin_breadcrumbs
    @breadcrumbs = ["<a href='/admin/'>首页</a>".html_safe]
  end
end
