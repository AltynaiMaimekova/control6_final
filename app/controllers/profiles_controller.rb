class ProfilesController < ApplicationController

	before_action :authenticate_user!, except: [:show]
	before_action :set_user

  def show
   	@posts = User.find_by(user_name: params[:user_name]).posts.order('created_at DESC').page params[:page]
  end

  private

	def set_user
	  @user = User.find_by(user_name: params[:user_name])
	end

end


