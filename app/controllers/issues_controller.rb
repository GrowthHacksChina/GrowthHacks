class IssuesController < ApplicationController
  before_action :authenticate_user!, only: %i(create new edit destroy update join quit)

  def index
    @issues = Issue.all.recent.paginate(page: params[:page], per_page: 4)
    drop_breadcrumb("往期")
  end

  def show
    @issue = Issue.find(params[:id])

    @posts = @issue.posts.recent.paginate(page: params[:page], per_page: 15)
    drop_breadcrumb(@issue.title)
  end

  private
end
