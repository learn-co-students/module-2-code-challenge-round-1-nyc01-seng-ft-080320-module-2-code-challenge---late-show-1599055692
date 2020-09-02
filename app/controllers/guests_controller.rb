class GuestsController < ApplicationController
  before_action :find_guest, only: [:show]

  def show
    if params[:sort] == "rating"
      @appearances = @guest.appearances.sort_by {|appearance| appearance.rating}.reverse
    else
      @appearances = @guest.appearances
    end
  end

  def index
    @guests = Guest.all
  end

  private

  def find_guest
    @guest = Guest.find(params[:id])
  end
end
