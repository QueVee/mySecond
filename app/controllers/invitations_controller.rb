class InvitationsController < ApplicationController

	def offer
		@second = User.new(user_params)
		UserMailer.invite_email(@second.name, @second.email, invite_token).deliver_later
		redirect_to root_url, notice: "mySecond invite has been sent."
	end

	def accept
		@accept = params[:invite_token]
		
  end
	
	private

	def user_params
		params.require(:user).permit(:name, :email)
	end

  def invite_token
  	@invite_token = current_user.invite_token
  end
end
