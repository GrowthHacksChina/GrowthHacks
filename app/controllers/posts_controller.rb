class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]

  def index
    @posts = Post.all
  end


  def show
    @issue = Issue.find(params[:issue_id])
    @post = Post.find(params[:id])
  end

  private

end
