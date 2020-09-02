class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
        redirect_to episode_path(@appearance.episode_id)
        else 
            flash[:my_errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    def edit
        @appearance = Appearance.find(params[:id])
    end

    def update
        @appearance.update(appearance_params)
        redirect_to appearance_path(@appearance)
    end

    def destroy
        @appearance = Appearance.find(params[:id])
        @appearance.destroy
        redirect_to appearance_path(@appearances)
    end

    private

    def find_
    end

    def appearance_params
        params.require(:appearance).permit!
    end

end
