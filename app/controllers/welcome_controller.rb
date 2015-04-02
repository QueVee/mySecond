class WelcomeController < ApplicationController
  def index
    session[:accept] = params[:invite_token]
  end
end
