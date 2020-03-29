class VideolikesController < ApplicationController

  def like
    like = current_user.videolikes.new(videocomment_id: params[:videocomment_id])
    like.save
    set_variables
  end

  def unlike
    like = current_user.videolikes.find_by(videocomment_id: params[:videocomment_id])
    like.destroy
    set_variables
  end

  private

  def set_variables
    @videocomment = Videocomment.find(params[:videocomment_id])
    @id_name = "#like-link-#{@videocomment.id}"
  end

end