class IssuesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new, :edit, :destroy, :update, :join, :quit]

  def index
    @issues = Issue.all.paginate(:page => params[:page], :per_page => 2)
  end

  def show
    @issue = Issue.find(params[:id])
    @posts = @issue.posts.recent.paginate(page: params[:page], per_page: 15)
    drop_breadcrumb( @issue.title , admin_issue_path(@issue))

  end

  def join
    @issue = Issue.find(params[:id])
    if !current_user.is_member_of?(@issue)
      current_user.join!(@issue)
      flash[:notice] = '加入本討論版成功！'
    else
      flash[:warning] = '你已經是本討論版成員了！'
    end
    redirect_to issue_path(@issue)
    end

  def quit
    @issue = Issue.find(params[:id])

    if current_user.is_member_of?(@issue)
      current_user.quit!(@issue)
      flash[:alert] = '已退出本討論版！'
    else
      flash[:warning] = '你不是本討論版成員，怎麼退出 XD'
    end

    redirect_to issue_path(@issue)
  end

  private

end
