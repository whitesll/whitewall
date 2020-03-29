class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:show]

  def show
    @nickname = current_user.nickname
  end

  private
  def correct_user
    user = User.find(params[:id])
    if current_user != user
      redirect_to root_path
    end
  end

end
