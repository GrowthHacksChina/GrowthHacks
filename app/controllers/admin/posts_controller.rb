class Admin::PostsController < ApplicationController

  before_action :authenticate_user!
  before_action :require_is_admin
  layout "admin"

  def index
    @posts = Post.all
  end

  def edit
    @issue = Issue.find(params[:issue_id])
    @post = Post.new
  end

  def new
    @issue = Issue.find(params[:issue_id])
    @post = Post.new
  end

  def create
    @issue = Issue.find(params[:issue_id])
    @post =Post.new(post_params)
    @post.issue = @issue
    @post.user = current_user
    if @post.save
      redirect_to issue_path(@issue)
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end
end
