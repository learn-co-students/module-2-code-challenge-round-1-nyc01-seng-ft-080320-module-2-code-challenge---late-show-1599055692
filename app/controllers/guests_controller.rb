class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show 
    @guest = Guest.find(params[:id])
    @sorted_apperances = @guest.sort_apperances
  end 
end
