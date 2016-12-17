class AddEaulaToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :eula, :boolean
  end
end
