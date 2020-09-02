class AppearancesController < ApplicationController
    #before_save :grab_a, only: []
    def new
        @appearance = Appearance.new
    end

    def create
        appearance = Appearance.create(params.require(:appearance).permit(:guest_id, :episode_id, :rating))
        if appearance.valid?
            redirect_to episode_path(appearance.episode)
        else
            flash[:apr_errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def grab_a
        @appearance = Appearance.find(params[:id])
    end
end
