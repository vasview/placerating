class AddPlaceRefToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :place, index: true, foreign_key: true
  end
end
