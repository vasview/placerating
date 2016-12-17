class AddCategoryRefToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :category, index: true, foreign_key: true
  end
end
