class SessionsController < ApplicationController
  def new
  end

  def show
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to "/"
    else
      session[:name] = params[:name]
      redirect_to homepage_path
    end
  end

  def destroy
    session.delete :name
    redirect_to "/"
  end
end
