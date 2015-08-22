class RegistrationsController < ApplicationController 
	def index
	end

	def new
		@user = User.new
	end

	def create
	end

	private

	def users_params
		
	end
end