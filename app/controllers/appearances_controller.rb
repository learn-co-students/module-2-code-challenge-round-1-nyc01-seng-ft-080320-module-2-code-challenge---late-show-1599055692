class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        appearance = Appearance.new(appearance_params)
        if appearance.valid?
            appearance.save
            redirect_to episode_path(appearance.episode_id)
        else

            flash[:my_errors] = @guest.errors.full_messages
            @guest = Guest.new
            redirect_to new_guest_path
        end
    end
    
    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
    
    
end
