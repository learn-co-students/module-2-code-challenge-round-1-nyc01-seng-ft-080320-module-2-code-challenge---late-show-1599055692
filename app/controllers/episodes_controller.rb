class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = get_episode
  end

  private

  def get_episode
    Episode.find(params[:id])
  end

end
