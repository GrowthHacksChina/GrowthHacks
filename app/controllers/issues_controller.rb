class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.user = current_user

    if @issue.save!
      puts "--------"
      current_user.join!(@issue)
      redirect_to issues_path, notice: "成功新建讨论版"
    else
      render :new
    end
  end

  def show
    @issue = Issue.find(params[:id])
    @posts = @issue.posts.recent.paginate(:page => params[:page], :per_page => 15)
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
    @issue = Issue.find(params[:id])
    @issue.update(issue_params)
    redirect_to issues_path, notice: "更新成功"
  end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    redirect_to issues_path, alert: "成功删除讨论版"
  end

  def join
     @issue = Issue.find(params[:id])
      if !current_user.is_member_of?(@issue)
        current_user.join!(@issue)
        flash[:notice] = "加入本討論版成功！"
      else
        flash[:warning] = "你已經是本討論版成員了！"
      end
        redirect_to issue_path(@issue)
    end

    def quit
      @issue = Issue.find(params[:id])

      if current_user.is_member_of?(@issue)
        current_user.quit!(@issue)
        flash[:alert] = "已退出本討論版！"
      else
        flash[:warning] = "你不是本討論版成員，怎麼退出 XD"
      end

      redirect_to issue_path(@issue)
    end


  private

  def issue_params
    params.require(:issue).permit(:title, :description)
  end
end
