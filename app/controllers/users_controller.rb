class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)

  	if @user.valid?
  		redirect_to items_path, notice: "You have signed up successfully!"
  	else
  		render 'new'
  	end
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email)
  end

end
