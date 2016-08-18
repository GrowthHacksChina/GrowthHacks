class WelcomeController < ApplicationController
  def index
    @issues = Issue.all
    @posts = Post.all
  end
end
