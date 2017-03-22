class AccountsController < ApplicationController
  before_action :set_account, only: [:destroy]
  def new
    @account = Account.new
  end

  def create
    account = Account.new(account_params)
    if account.valid?
      account.save
      session[:user_id] = account.id
      redirect_to guests_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    reset_session
    redirect_to new_session_path
  end

  private

  def account_params
    params.require(:account).permit(:username, :password)
  end

  def set_account
    @account = Account.find(params[:id])
  end

end
