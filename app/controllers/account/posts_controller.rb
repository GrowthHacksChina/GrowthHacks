class Account::PostsController < ApplicationController
   before_action :authenticate_user!

  def add_to_favorite_test
  	@post = Post.find(params[:id])
    current_user.join_favorite!(@post)
    flash[:notice] = "收藏成功!"
    redirect_to :back
  end


  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
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
