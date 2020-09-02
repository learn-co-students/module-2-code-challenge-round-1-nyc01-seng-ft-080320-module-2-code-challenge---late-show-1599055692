class EpisodesController < ApplicationController
  before_action :get_ep, only: [:show, :edit]

  def index
    @episodes = Episode.all
  end

  def show
  end

  private

  def ep_params
    params.require(:episode).permit(:date, :number)
  end

  def get_ep
    @episode = Episode.find(params[:id])
  end
end
