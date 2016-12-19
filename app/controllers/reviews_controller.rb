class ReviewsController < ApplicationController
 include ReviewsHelper
  before_action :authenticate_user!

  def create
  	@place = Place.find(params[:place_id])
  	@review = @place.reviews.create(review_params)
  	helper_avg_rating_calculation(@place)
  	respond_to do |format|
  		format.js {}
  	end 
  end

  def destroy
  	
  end

  private

  def review_params
  	params.require(:review).permit(:body, :food_quality, :service_quality, :interior_mark, :place_id, :user_id)
  end

end
