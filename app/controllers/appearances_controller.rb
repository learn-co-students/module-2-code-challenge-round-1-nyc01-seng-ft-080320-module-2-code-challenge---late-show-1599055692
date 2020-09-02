class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)
        # byebug
        # .valid? not working with custom validation for some reason. I haven't used customs enough.
        if @appearance.id?
            redirect_to episode_path(@appearance.episode.id)
        else
            flash[:my_errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end
