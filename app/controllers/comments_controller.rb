class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    p @comment
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment_body).permit(:comment_body)
  end
end
