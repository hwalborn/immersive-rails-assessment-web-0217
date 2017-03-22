class SessionsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
    user = Account.find_by(username: params[:username])
    session[:user_id] = user.id
  end

end
