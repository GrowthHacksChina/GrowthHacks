class Admin::PostsController < AdminController
  def index
    @posts = Post.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    if params[:issue_id]
      @issue = Issue.find(params[:issue_id])
      @post = Post.find(params[:id])
      drop_breadcrumb(@issue.title, admin_issue_path(@issue))

    else
      @post = Post.find(params[:id])

    end
    drop_breadcrumb("正文")
  end

  def edit
    if params[:issue_id]
      @issue = Issue.find(params[:issue_id])
      @post = Post.find(params[:id])
      drop_breadcrumb(@issue.title, admin_issue_path(@issue))

    else
      @post = Post.find(params[:id])

    end

    drop_breadcrumb("正文")
  end

  def new
    @issue = Issue.find(params[:issue_id])
    @post = Post.new
  end

  def create
    @issue = Issue.find(params[:issue_id])
    @post = Post.new(post_params)
    @post.issue = @issue
    @post.user = current_user
    if @post.save
      redirect_to admin_issue_path(@issue), notice: "Create Sueecss"
    else
      render :new, notice: "Failed to create"
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to admin_post_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      redirect_to :back, notice: "Delete Success"
    else
      render :back, notice: "Failed to delete"
    end
  end

  def comment
    @post = Post.find(params[:post_id])
    @comment = @post.comments
    drop_breadcrumb "评论管理"
  end

  def publish
    @post = Post.find(params[:id])
    @post.publish!
    redirect_to :back
  end

  def hide
    @post = Post.find(params[:id])
    @post.hide!
    redirect_to :back
  end

  private

  def drop_each_admin_breadcrumbs
    drop_breadcrumb "文章管理", admin_posts_path
  end

  def post_params
    params.require(:post).permit(:content, :title, :author, :tag, :origin_link, :pv, :image, :brief_introduction, :is_hidden)
  end
end
