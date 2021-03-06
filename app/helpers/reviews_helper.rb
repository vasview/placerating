module ReviewsHelper

  def helper_avg_rating_calculation(place)
  	number_of_reviews = place.reviews.size
  	if number_of_reviews != 0
  		food_quality_count = 0
  		service_quality_count = 0
  		interior_mark_count = 0
  		place.reviews.each do |review|
  			food_quality_count += review.food_quality || 0
  			service_quality_count += review.service_quality || 0
  			interior_mark_count += review.interior_mark || 0
  		end	
  		place.food_quality_rating = (food_quality_count.to_f / number_of_reviews).round 2
  		place.service_quality_rating = (service_quality_count.to_f / number_of_reviews).round 2
  		place.interior_quality_rating = (interior_mark_count.to_f / number_of_reviews).round 2

  		place.rating = ((place.food_quality_rating + place.service_quality_rating + place.interior_quality_rating) / 3.0).round 2
  		place.save
  	end	
  end

end
