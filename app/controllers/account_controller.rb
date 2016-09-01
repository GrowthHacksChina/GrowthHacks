class AccountController < ApplicationController
  before_action :authenticate_user!
  before_action :set_account_breadcrumbs

  def set_account_breadcrumbs
    @breadcrumbs = [view_context.link_to("个人中心", account_users_path)]
  end

  def drop_account_breadcrumb(title = nil, url = nil)
    title ||= @page_title

    if title && url
      @breadcrumbs.push(view_context.link_to(title, url))
    elsif title
      @breadcrumbs.push(title)
    end
  end

end
