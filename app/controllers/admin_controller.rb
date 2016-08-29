class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin
  before_action :set_admin_breadcrumbs
  before_action :drop_each_admin_breadcrumbs

  layout "admin"

  def set_admin_breadcrumbs
    @breadcrumbs = ["<a href='/admin/'>Admin 页</a>".html_safe]
  end
end
