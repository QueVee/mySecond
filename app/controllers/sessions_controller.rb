class SessionsController < ApplicationController
  
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    	log_in user
      flash[:notice] = "Welcome back, #{user.name}!"
      redirect_to root_path
    else
      flash.now[:alert] = "Invalid email/password"
      render 'new'
    end
  end

  def destroy
  	log_out
  	redirect_to welcome_index_path, notice: "You have successfuly signed out!"
  end
end
