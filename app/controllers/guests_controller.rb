class GuestsController < ApplicationController
  before_action :find_guest, only: [:show]

  def show
  end

  def index
    @guests = Guest.all
  end

  private

  def find_guest
    @guest = Guest.find(params[:id])
  end
end
