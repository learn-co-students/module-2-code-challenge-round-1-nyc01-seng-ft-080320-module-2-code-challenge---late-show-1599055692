class EpisodesController < ApplicationController

  before_action :get_episode_by_id, only: [:show]
  def index
    @episodes = Episode.all
  end

  def show

  end

  private
  def get_episode_by_id
    @episode = Episode.find(params[:id])
  end
end
