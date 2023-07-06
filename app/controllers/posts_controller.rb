# frozen_string_literal: true
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show

  end

  def new
    @post=Post.new

  end

  def edit

  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to "/posts"

  end

  def update

    if @post.update(post_params)
      flash[:notice]="updated successfully"
    else
      render "edit"
    end
  end

  def destroy

    @post.destroy
    redirect_to "/posts"
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end

end
