class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :update]

  def index
    @guests = Guest.all
  end

  def show
    @appearance = Appearance.new
  end

  def update
    episode = Episode.find_or_create_by(number: params[:guest][:appearances])
    @guest.episodes << episode
    @guest.save
    redirect_to @guest
  end
  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end
end
