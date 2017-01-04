class SessionsController < ApplicationController
  def new
  end

  def create
    if User.find_by(params[:user])
      session[:user_id] = User.find_by(params[:user]).id
      redirect_to '/welcome'
    else
      redirect_to login_path
    end
  end
end
