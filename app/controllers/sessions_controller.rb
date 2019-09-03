class SessionsController < ApplicationController

  skip_before_action :logged_in?

  def new
  end

  def create
    if params[:name] != nil && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

end
