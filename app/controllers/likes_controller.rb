class LikesController < ApplicationController

  def like
    like = current_user.likes.new(comment_id: params[:comment_id])
    like.save
    set_variables
  end

  def unlike
    like = current_user.likes.find_by(comment_id: params[:comment_id])
    like.destroy
    set_variables
  end

  private

  def set_variables
    @comment = Comment.find(params[:comment_id])
    @id_name = "#like-link-#{@comment.id}"
  end

end
