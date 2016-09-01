class WelcomeController < ApplicationController
  layout "welcome"
  def index

    @posts = Post.all.recent.paginate(page: params[:page], per_page: 5)
    @hot_posts = Post.all.hot_post
  end
end
