class PlacesController < ApplicationController

  def new
  	@place = Place.new
  end

  def create
  	@place = Place.new(place_params)

  	if @place.save
      if params[:pictures]
        params[:pictures].each do |picture|
          @place.images.create(picture: picture, user_id: current_user.id)
        end  
      end    
  		flash[:success] = "Your message is being moderated, it will be added as soon as Administrator appoves it!"
  		redirect_to root_path
  	else
  		render 'new'
  	end	
  end

  def destroy
  end

  private

  def place_params
  	params.require(:place).permit(:title, :description, :category_id, :user_id, :pictures, :eula)
  end
end
