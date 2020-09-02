class AppearancesController < ApplicationController
  

  def new
    @appearance = Appearance.new
  end

  def create
    # NOTE: I left this code here to show how I would do it with flash[:my_errors]. 
    # However, I decided to use the render :new strategy because flash[:my_errors] 
    # wasn't saving the choices of guest and episode number. 
    
    # Additionally, in the feature demo, it seemed to be using the render :new strategy as well 
    # (when showing the errors, the url is /appearances, not /appearances/new).
    # Since render :new fulfilled all the deliverables, I went with that.

    # @appearance = Appearance.create(appearance_params)

    # if @appearance.valid?
    #   flash[:success] = "Appearance created!"
    #   redirect_to episode_path(@appearance.episode)
    # else 
    #   flash[:my_errors] = @appearance.errors.full_messages
    #   redirect_to new_appearance_path
    # end 

    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
      @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      @appearance.save
      render :new
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
