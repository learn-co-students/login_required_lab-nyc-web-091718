class SessionsController < ApplicationController

  def new

  end

  def create
    return redirect_to controller: "sessions", action: "new" if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: "secrets", action: "show"
  end

  def destroy
    session[:name] = nil
    redirect_to controller: "sessions", action: "new"
  end


end
