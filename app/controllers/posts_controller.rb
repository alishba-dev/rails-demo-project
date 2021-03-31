class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy] #call find_post before these actions

  def index
    FirstJob.perform_later 1,2,3
    @posts = Post.all.order("created_at DESC")
  end

=begin
  new and create both for showing view and creating the object in db
  The new action instantiates a new article, but does not save it.
  This article will be used in the view when building the form.
  The create action instantiates a new article with values
  for the title and body, and attempts to save it.
=end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) #post_params: rails security measure
    if @post.save #if post is save successfully, redirect to post#show
      redirect_to @post
    else #else if post is not save successfully, redirect to post#new
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private
  def find_post
    @post = Post.find(params[:id]) #find post with the id passed in as params(hash)

    # We added a separate function of find because it was needed in three different functions
    # so to follow the convention of DRY
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
