class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params )
    post.user = current_user
    post.save
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    raise
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end


end
