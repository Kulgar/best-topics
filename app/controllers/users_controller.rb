class UsersController < ApplicationController

  def profile
    @user = User.new
    @user.build_profile
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to profile_path
    end
  end

  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :birthday, 
        profile_attributes: [:description, :country, :title, :website])
    end

end
