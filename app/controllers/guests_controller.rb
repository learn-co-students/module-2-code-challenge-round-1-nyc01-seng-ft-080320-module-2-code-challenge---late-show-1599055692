class GuestsController < ApplicationController
  before_action :get_guest_by_id, only: [:show]
  
  def index
    @guests = Guest.all
  end

  def show

  end

  private
  def get_guest_by_id
    @guest = Guest.find(params[:id])
  end
end
