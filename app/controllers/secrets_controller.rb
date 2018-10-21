class SecretsController < ApplicationController

  def show
    return redirect_to controller: "sessions", action: "new" if session[:name].nil? || session[:name].empty?
  end

end
