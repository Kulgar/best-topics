class UsersController < ApplicationController

  def profile
    @user = User.new
    @user.build_profile
    @user.build_avatar
  end


end
