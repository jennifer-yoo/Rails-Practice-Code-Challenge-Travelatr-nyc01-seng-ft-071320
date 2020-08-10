class BloggersController < ApplicationController
  def new
    @blogger = Blogger.new
  end

  def show
    @blogger = Blogger.find(params[:id])
    @posts = Post.all
  end

  def create
    @blogger = Blogger.create(blogger_params)
    redirect_to blogger_path(@blogger)
  end

  def index
    @bloggers = Blogger.all
  end

  private

  def blogger_params
    params.require(:blogger).permit(:name, :age, :bio)
  end

end
