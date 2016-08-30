class WelcomeController < ApplicationController
  layout "welcome"
  def index
    @issues = Issue.all.recent.paginate(page: params[:page], per_page: 10)
    @posts = Post.all.paginate(page: params[:page], per_page: 5)
    @hot_posts = Post.all.hot_post
  end
end
