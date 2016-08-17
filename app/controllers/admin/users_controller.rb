class Admin::UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :require_is_admin

  layout "admin"

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:user_id] )
  end


  def update

  end

  def destroy
    @user = User.find(params[:user_id] )
    @user.destroy
    redirect_to dmin_userss_path
  end

  def change
    @user = User.find(params[:user_id] )
    if @user.is_admin
      @user.is_admin = false
    else
      @user.is_admin = true
    end
    @user.save
    @users = User.all
    render :index
  end



end
