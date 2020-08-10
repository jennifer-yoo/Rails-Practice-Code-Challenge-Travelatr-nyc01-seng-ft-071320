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
    if @blogger.valid?
    redirect_to blogger_path(@blogger)
    else
      flash[:my_errors] = @blogger.errors.full_messages
      redirect_to new_blogger_path
    end
  end

  def index
    @bloggers = Blogger.all
  end

  private

  def blogger_params
    params.require(:blogger).permit(:name, :age, :bio)
  end

end
