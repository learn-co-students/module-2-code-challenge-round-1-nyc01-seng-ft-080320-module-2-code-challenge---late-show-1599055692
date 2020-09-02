class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = get_guest
  end

  private

  def get_guest
    Guest.find(params[:id])
  end

end
