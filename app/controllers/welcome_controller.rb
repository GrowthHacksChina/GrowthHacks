class WelcomeController < ApplicationController
  def index
    @issues = Issue.all
    @posts = Post.all.paginate(:page => params[:page], :per_page => 5)
  end
end
