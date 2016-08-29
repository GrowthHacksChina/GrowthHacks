class Admin::UsersController < AdminController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to admin_users_path, notice: "Update Success"
    else
      render :edit, notice: "Failed to update"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end

  def change
    @user = User.find(params[:user_id])
    @user.is_admin =
      if @user.is_admin
        false
      else
        true
                          end
    @user.save
    @users = User.all
    render :index
  end

  private

  def drop_each_admin_breadcrumbs
    drop_breadcrumb "用户管理", admin_users_path
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
