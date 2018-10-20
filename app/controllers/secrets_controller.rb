class SecretsController < ApplicationController
  def new
  end

  def show
    if session.include? :name
    else
      redirect_to sessions_new_path
    end
  end

end ### End of SecretsController
