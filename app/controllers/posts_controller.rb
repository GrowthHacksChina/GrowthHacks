class PostsController < ApplicationController
  before_action :validate_search_key, only: [:search]
  before_action :authenticate_user!, only: %i(new create edit destroy)
  before_action :set_breadcrumbs

  def index
    @posts = Post.all
    @hot_posts = Post.all.hot_post
  end

  def show
    @post = Post.find(params[:id])
    @issue = @post.issue
    drop_breadcrumb(@issue.title, issue_path(@issue))
    drop_breadcrumb("正文")
  end

  def search
    if @query_string.present?
      search_result = Post.ransack(@search_criteria).result(distinct: true)
      @posts = search_result.paginate(page: params[:page], per_page: 20)
      drop_breadcrumb("搜索")
      # set_page_title "搜索 #{@query_string}"
      # @q = Post.ransack( params[:q])
      # @posts = @q.result(distinct: true)
    end
  end


  def hot
    @posts = Post.all.hot_post
    @favorite_posts = Post.all.favorite_posts
    drop_breadcrumb("热门文章")
  end

  def like
    message = {}
    unless current_user
      message[:status] = "Failed"
      message[:msg] = "用户未登陆，请您登陆后再点赞！"
      render json: message
      return
    end
    @post = Post.find(params[:id])
    if !current_user.is_like?(@post)
      current_user.like!(@post)
      @post.support = @post.support + 1
      @post.save
      message[:status] = "Success"
      message[:msg] = "点赞成功！"
      message[:support] = @post.support
    else
      message[:status] = "您已经赞过这篇文章了，无法重复点赞"
    end

    render json: message
  end

  def cancel_like
    @post = Post.find(params[:id])
    message = {}
    if current_user.is_like?(@post)
      current_user.cancel_like!(@post)
      @post.support = @post.support - 1
      @post.save
      message[:status] = "Success"
      message[:msg] = "取消点赞成功"
      message[:support] = @post.support
    else
      message[:status] = "Failed"
      message[:msg] = "取消点赞失败，您尚未点赞该文章"
    end
    render json: message
  end


  private

  def post_params
    params.require(:post).permit(:title, :content, :author, :tag, :origin_link, :pv, :image, :brief_introduction)
  end

  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end

  def search_criteria(query_string)
    { title_cont: query_string }
  end
end
