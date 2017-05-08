# This is the post controller, where are implemented the actions of the Posts
# view
class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    # code goes here
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: 'Your post was created successfully.'
    else
      render :new
    end
  end

  def show
    # code goes here
  end

  private

  def post_params
    params.require(:post).permit(:date, :rationale)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
