class ApperancesController < ApplicationController

    def new 
        @apperance = Apperance.new
        @guests = Guest.all 
        @episodes = Episode.all
    end 

    def create
        @apperance = Apperance.create(apperance_params)

        if @apperance.valid?
            redirect_to apperance_path(@apperance)
        else 
            flash[:my_errors] = @apperance.errors.full_messages
            redirect_to new_apperance_path
        end
    end 

    private 
    
    def apperance_params
        params.require(:apperance).permit(:guest_id, :episode_id, :rating)
    end 
end
