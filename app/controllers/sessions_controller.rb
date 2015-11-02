class SessionsController < ApplicationController
	def new 
		
	end
	
	def create 
		@user = User.find_by(email: params[:email])
		if @user and @user.password == params[:password]
			session[:user_id] = @user.id
			redirect_to @user, notice: "Logged in!"
		else 
			redirect_to login_path, notice: "Login info was not correct!"
		end
	end
	
	def destroy 
		session[:user_id] = nil 
		redirect_to root_path, notice: "Logged out!"
	end
end