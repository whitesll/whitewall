class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @search = Post.ransack(params[:q])
    if params[:game_id]
      @posts = Post.where(game_id: params[:game_id]).page(params[:page]).per(10)
    else
      @posts = @search.result.includes(:game).order("created_at DESC").page(params[:page]).per(10)
    end
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to createpage_posts_path
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :game_id)
  end
   
end