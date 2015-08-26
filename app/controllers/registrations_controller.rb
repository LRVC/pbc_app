class RegistrationsController < ApplicationController 
	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(users_params)
		if @user.save
			redirect_to root_path, notice: "Thanks for registering!"
		else
			render :new
		end
	end

	private

	def users_params
		params.require(:user).permit(:first_name, :last_name, :password)
	end
end