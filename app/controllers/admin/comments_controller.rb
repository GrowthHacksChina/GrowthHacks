class Admin::CommentsController < ApplicationController
  layout "admin"

  def index
    @posts = Post.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.paginate(page: params[:page], per_page: 10)
    if @comment.is_hidden
      flash[:warning] = "This Comment already archieved"
      redirect_to admin_post_path(@post)
    end
    drop_breadcrumb(@post.title, admin_post_path(@post))
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to :back, notice: "Delete Success"
    else
      render :back, notice: "Failed to delete"
    end
  end

  def hide
    @comment = Comment.find(params[:id])
    @comment.publish!
    redirect_to :back
  end

  def public
    @comment = Comment.find(params[:id])
    @job.hide!
    redirect_to :back
  end

end
