class BlogsController < ApplicationController
  before_action :set_blog, only:[:show, :edit, :update, :destroy]
  def index
    @blogs = Blog.all
  end
  def create
    @blog = Blog.new()
  end
  private
  def set_blog
    @blog = Blog.find(params[:id])
  end
  def blog_params
    params.require(:blog).permit(:content, :image, :image_cache)
  end
end
