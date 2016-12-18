class AddAverageRatingToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :food_quality_rating, :float
    add_column :places, :service_quality_rating, :float
    add_column :places, :interior_quality_rating, :float
  end
end
