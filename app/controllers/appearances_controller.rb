class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)  #to myself: use the variable on both if statements

        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:error_message] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end
