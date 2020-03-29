class VideosController < ApplicationController
  before_action :videos_search

  def index
    if params[:game_id]
      @videos = Video.where(game_id: params[:game_id]).page(params[:page]).per(3)
    else
      @videos = @search.result.includes(:game).order("created_at DESC").page(params[:page]).per(3)
    end
  end

  def show
    @video = Video.find(params[:id])
    @videocomment = Videocomment.new
    @videocomments = @video.videocomments.includes(:user).order("created_at ASC")
  end

  private

  def videos_search
    @search = Video.ransack(params[:q])
  end

end
