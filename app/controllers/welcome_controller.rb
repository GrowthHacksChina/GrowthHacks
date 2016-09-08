class WelcomeController < ApplicationController
  layout "welcome"
  def index

    @posts = Post.where(:is_hidden => false).recent.paginate(page: params[:page], per_page: 5)
    @hot_posts = Post.where(:is_hidden => false).hot_post
  end
end
