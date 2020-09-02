class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appear_params)
        # byebug
        if @appearance.valid?
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
end
