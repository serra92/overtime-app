# This is the post controller, where are implemented the actions of the Posts
# view
class PostsController < ApplicationController
  def index
    # code goes here
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:date, :rationale))
    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end
end
