class VideocommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    Videocomment.create(videocomment_params)
    set_variables
  end

  private
  def videocomment_params
    params.require(:videocomment).permit(:comment).merge(user_id: current_user.id, video_id: params[:video_id], likes_count: 0)
  end

  def set_variables
    @video = Video.find(params[:video_id])
    @videocomments = @video.videocomments.includes(:user)
  end

end