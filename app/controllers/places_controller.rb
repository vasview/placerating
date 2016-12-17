class PlacesController < ApplicationController

  def new
  	@place = Place.new
  	@image = @place.images.build
  end

  def create
  	@place = Place.new(place_params)
  	@image = Image.create(params[:image])
  	if @place.save
  		binding.pry
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
  	params.require(:place).permit(:title, :description, :category_id, :user_id)
  end
end
