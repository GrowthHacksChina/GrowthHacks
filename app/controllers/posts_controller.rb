class PostsController < ApplicationController

  before_action :validate_search_key , :only => [:search]
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]

  def index
    @posts = Post.all
  end


  def show
    @issue = Issue.find(params[:issue_id])
    @post = Post.find(params[:id])
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
    params.require(:post).permit(:title, :content, :author, :tag, :origin_link, :pv)
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
