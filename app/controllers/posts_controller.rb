class PostsController < ApplicationController
  before_action :authenticate_user!, :only[:new, :create, :edit, :destroy]
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

  def show
    @issue = Issue.find(params[:issue_id])
    @post = Post.find(params[:id])
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


  def destroy
    @issue = Issue.find(params[:issue_id])
    @post = Post.find(params[:id])

    @post.destroy
    redirect_to issue_path(@issue),alert:"Post deleted!"
  end



  private

  def post_params
    params.require(:post).permit(:title, :content, :author, :tag, :origin_link, :PV)
  end

end
