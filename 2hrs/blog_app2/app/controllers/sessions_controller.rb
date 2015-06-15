class SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.confirm(*login_params)
		if user
			login(user)
			redirect_to user_path(user)
		else
			reidirect_to login_path
		end
	end

	def login_params
		user=params.require(:user)
		[user[:user], user[:password]]
	end
end
