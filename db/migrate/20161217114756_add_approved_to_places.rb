class AddApprovedToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :approved, :boolean
  end
end
