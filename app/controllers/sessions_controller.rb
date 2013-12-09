class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by_email(params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      flash[:alert] = 'that password was incorrect'
    end
    flash[:alert] = 'email not found' unless user
    redirect_to home_page_path
  end

  def destroy
    session.clear
    redirect_to home_page_path
  end

end