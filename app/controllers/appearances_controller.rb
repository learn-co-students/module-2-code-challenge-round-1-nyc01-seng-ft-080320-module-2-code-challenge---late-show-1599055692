class AppearancesController < ApplicationController
    before_action :get_appear, only: [:show]

    def index
        @appearances = Appearance.all
    end

    def show
    end

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appear_params)
        if @appearance.valid?
            @appearance.save
            redirect_to episode_path(@appearance.episode)
        else
            flash[:my_errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end


    private

    def appear_params
      params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
  
    def get_appear
      @appearance = Appearance.find(params[:id])
    end
end
