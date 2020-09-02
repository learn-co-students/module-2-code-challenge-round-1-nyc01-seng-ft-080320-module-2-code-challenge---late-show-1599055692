class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(episode_params)
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode.update(episode_params)
    redirect_to episode_path(@episode)
  end

  def destroy
    @episoe = Episode.find(params[:id])
    @episode.destroy
    redirect_to episode_path(@episodes)
  end

  private

  

  def episode_params
    params.require(:episode).permit!
  end

end
