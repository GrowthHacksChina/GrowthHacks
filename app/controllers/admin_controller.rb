class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin
  before_action :set_admin_breadcrumbs

  layout "admin"
end
