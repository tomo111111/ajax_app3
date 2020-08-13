class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :DESC)
  end

  def create
    Post.create(content: params[:content])
    redirect_to action :index
  end
end
