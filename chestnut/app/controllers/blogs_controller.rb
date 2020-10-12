class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    @blog.save
    redirect_to blog_path(@blog.id)
  end

  def index
  end

  def show
    @blog = Blog.find(params[:id])
    @user = @book.user


  end

  private
  def post_blog_params
    params.require(:blog).permit(:title, :imag, :caption)
  end
end
