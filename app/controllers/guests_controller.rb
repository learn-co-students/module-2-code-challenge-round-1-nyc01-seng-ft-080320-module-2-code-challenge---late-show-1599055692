class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @sorted_list = @guest.appearances.sort_by {|a| a.rating}.reverse
  end
end
