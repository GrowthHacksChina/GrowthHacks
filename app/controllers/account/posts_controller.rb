class Account::PostsController < AccountController
  before_action :authenticate_user!
  before_action :drop_account_breadcrumb

  def add_to_favorite_test
    @post = Post.find(params[:id])
    if current_user.favorite_posts.include?(@post)
      flash[:alert] = "此文章已在收藏夹!"
    else
      current_user.join_favorite!(@post)

      flash[:notice] = "收藏成功!"
    end
    redirect_to :back
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
