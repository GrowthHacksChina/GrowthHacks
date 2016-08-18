class PostsController < ApplicationController

  before_action :authenticate_user!, only:[:new, :create, :edit, :destroy]
  before_action :validate_search_key , :only => [:search]

  def index
    @posts = Post.all
  end

  def edit
    @issue = Issue.find(params[:issue_id])
    @post = Post.find(params[:id])
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
    @post = Post.new(post_params)
    @post.issue = @issue
    @post.user = current_user
    if @post.save
      redirect_to issue_path(@issue)
    else
      render :new
    end
  end

  def update
    @issue = Issue.find(params[:issue_id])
    @post = Post.find(params[:id])
    @post.issue = @issue
    @post.user = current_user
    if @post.update(post_params)
      redirect_to issue_path(@issue)
    else
      render :edit
    end
  end


  def destroy
    @issue = Issue.find(params[:issue_id])
    @post = Post.find(params[:id])

    @post.destroy
    redirect_to issue_path(@issue),alert:"Post deleted!"
  end

  def search
    if @query_string.present?
      search_result = Post.ransack(@search_criteria).result(:distinct => true)
      @posts = search_result.paginate(:page => params[:page], :per_page => 20 )
      # set_page_title "搜索 #{@query_string}"
      # @q = Post.ransack( params[:q])
      # @posts = @q.result(distinct: true)
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :author, :tag, :origin_link, :PV)
  end

  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end


  def search_criteria(query_string)
    { :title_cont => query_string }
  end

end
