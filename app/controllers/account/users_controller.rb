class Account::UsersController < AccountController
  before_action :authenticate_user!
  before_action :drop_account_breadcrumb

  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    drop_breadcrumb "编辑信息"

  end

  def update
    @user = User.find(params[:id])
    if @user.update(params_user)
      redirect_to account_user_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def favorite
    @posts = current_user.favorite_posts
    unless @posts
      redirect_to :back, notice: "没有收藏的文章"
    end
    drop_breadcrumb "我的收藏"

  end

  private

  def params_user
    params.require(:user).permit(:email, :introduction, :avatar)
  end



end
