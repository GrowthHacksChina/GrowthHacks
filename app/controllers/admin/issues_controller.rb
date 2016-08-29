class Admin::IssuesController < AdminController
  def set_admin_breadcrumbs
    @breadcrumbs = ["<a href='/admin/issues'>期刊管理</a>".html_safe]
  end

  def index
    @issues = Issue.all
    @issues = @issues.recent.paginate(page: params[:page], per_page: 10)
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.user = current_user
    if @issue.save
      redirect_to admin_issues_path, notice: "admin成功新建讨论版"
    else
      render :new
    end
  end

  def show
    @issue = Issue.find(params[:id])
    @posts = @issue.posts.recent.paginate(page: params[:page], per_page: 10)
    drop_breadcrumb(@issue.title, admin_issue_path(@issue))
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
    @issue = Issue.find(params[:id])
    @issue.update(issue_params)
    redirect_to admin_issues_path, notice: "更新成功"
  end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    redirect_to admin_issues_path, alert: "成功删除讨论版"
  end

  private

  def issue_params
    params.require(:issue).permit(:title, :description)
  end
end
