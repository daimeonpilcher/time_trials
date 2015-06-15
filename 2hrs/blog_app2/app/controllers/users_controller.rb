class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end
	def show
		
	end
	def create
		user = User.new(user_params)
		unless user.save()
			redirect_to signup_path
		else
			login(user)
			redirect_to user_path(user)
		end
	end
	def user_params
		params.require(:user). permit(:email, :first_name, :last_name, :password_digest, :password_confirmation)
	end
end
