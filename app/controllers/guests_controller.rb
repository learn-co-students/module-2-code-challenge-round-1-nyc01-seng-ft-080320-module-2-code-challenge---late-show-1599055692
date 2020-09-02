class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(guest_params)
    redirect_to guest_path(@guest)
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest.update(guest_params)
    redirect_to guest_path(@guest)
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    redirect_to guest_path(@guests)
  end

  private

  def guest_params
    params.require(:guest).permit!
  end


end
