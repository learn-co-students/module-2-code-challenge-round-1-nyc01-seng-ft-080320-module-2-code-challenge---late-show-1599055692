class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all 
    end

    def create
        @appearance = Appearance.create(params.require(:appearance).permit(:episode_id, :guest_id, :rating))
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode_id)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end

    end


end
