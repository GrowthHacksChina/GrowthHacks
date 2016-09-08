class Admin::CommentsController < ApplicationController

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
