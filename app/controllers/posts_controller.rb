# This is the post controller, where are implemented the actions of the Posts
# view
class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post, notice: 'Your post was created successfully.'
    else
      render :new
    end
  end

  def show
    # code goes here
  end

  def edit
    # code goes here
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Your post was updated successfully'
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:date, :rationale)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
