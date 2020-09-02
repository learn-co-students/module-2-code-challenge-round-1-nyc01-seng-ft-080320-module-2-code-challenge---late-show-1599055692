class AppearancesController < ApplicationController

    def show
        @user = find_appearance
    end
    
    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)

        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:my_errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def find_appearance
        Appearance.find(params[:id])
    end

    def appearance_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end

end
