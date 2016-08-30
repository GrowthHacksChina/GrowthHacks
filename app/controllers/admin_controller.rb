class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin
  before_action :set_admin_breadcrumbs
  before_action :drop_each_admin_breadcrumbs

  layout "admin"

  def set_admin_breadcrumbs
    @breadcrumbs = [view_context.link_to("Admin 页", "/admin/users")]
  end
end
