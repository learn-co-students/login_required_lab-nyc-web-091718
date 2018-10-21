class SessionsController < ApplicationController
  def index
  end
  # def show
  # end
  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    if session[:name]
      session[:name] = nil
      redirect_to new_session_path
    else
      redirect_to new_session_path
    end
  end

end
