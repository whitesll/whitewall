class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    Comment.create(comment_params)
    redirect_to "/posts/#{params[:post_id]}"
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :image).merge(user_id: current_user.id, post_id: params[:post_id], likes_count: 0)
  end
end
