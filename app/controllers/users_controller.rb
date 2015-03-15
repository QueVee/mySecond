class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)

  	if @user.valid?
  		redirect_to @user, notice: "You have signed up successfully!"
  	else
  		render 'new'
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(user_params)
  		redirect_to @user
  	else
  		render 'edit'
  	end
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email)
  end

end
