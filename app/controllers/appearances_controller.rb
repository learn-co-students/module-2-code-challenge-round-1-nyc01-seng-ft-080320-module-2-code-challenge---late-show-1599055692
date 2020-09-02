class AppearancesController < ApplicationController
    before_action :new_appearance, only: [:new, :create]

    def new
        if flash[:params]
            @appearance.update(flash[:params])
        end
    end

    def create
        @appearance.update(appearance_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            flash[:params] = appearance_params
            redirect_to new_appearance_path
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

    def new_appearance
        @appearance = Appearance.new
    end
end
