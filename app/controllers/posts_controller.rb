class PostsController < ApplicationController

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

    def index
      @posts = Post.all
    end

  private
  def post_params
    params.require(:post).permit(:title, :content, :author, :tag, :origin_link, :PV)
  end
  end
