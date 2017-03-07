class SessionsController < ApplicationController

  def new

  end

  def create
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def show
    redirect_to '/' if current_user.nil?
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
