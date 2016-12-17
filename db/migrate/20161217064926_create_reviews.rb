class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :food_quality
      t.integer :service_quality
      t.integer :interior_mark

      t.timestamps null: false
    end
  end
end
