class Account::PostsController < AccountController
  layout "user"
  before_action :authenticate_user!, :except => :add_to_favorite_test
  before_action :drop_account_breadcrumb

  def add_to_favorite_test
    message = {}
    unless current_user
      message[:status] = "e"
      render json: message
      return
    end
    @post = Post.find(params[:id])
    if current_user.favorite_posts.include?(@post)
        message[:status] = "n"
    else
      current_user.join_favorite!(@post)
      message[:status] = "y"
    end

    render json: message
  end

  def remove_favorite_post
    @post = current_user.favorite_posts.find(params[:id])
    if current_user.delete_favorite!(@post)
      redirect_to :back, notice: "Delete Success"
    else
      render :back, notice: "Failed to delete"
    end
  end

  private

  def post_params
    params.require(:post).permit(:add_to_favorite_test, :destroy)
  end
end
