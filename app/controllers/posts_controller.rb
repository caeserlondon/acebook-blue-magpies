class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    # redirect_to posts_url
    redirect_to User.find(@post.loc_id)
  end

  def index
  @posts = Post.all
  #   SELECT users.name, users.id, posts.message
  #   FROM users, posts
  #   WHERE posts.user_id = users.id
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id, :loc_id)
  end

end
