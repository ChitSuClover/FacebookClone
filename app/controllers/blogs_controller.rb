class BlogsController < ApplicationController
  before_action :set_blog, only:[:show, :edit, :update, :destroy]
  def index
    @blogs = Blog.all
  end
  def new
    @blog = Blog.new
  end
  def create
    if params[:back]
      @blog = Blog.new(blog_params)
      render :new
    else
      @blog = Blog.create(blog_params)
      if @blog.save
        redirect_to blogs_path, notice: "Post Created"
      else
        render :new
      end
    end
  end
  private
  def set_blog
    @blog = Blog.find(params[:id])
  end
  def blog_params
    params.require(:blog).permit(:content, :image, :image_cache)
  end
end
