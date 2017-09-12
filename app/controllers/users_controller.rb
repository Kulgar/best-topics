class UsersController < ApplicationController

  def profile
    @user = User.new
    @user.build_profile
    @user.build_avatar
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to profile_path
    else
      render :profile
    end
  end

  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :birthday,
        profile_attributes: [:description, :country, :title, :website],
        avatar_attributes: [:file, :name])
    end


end
