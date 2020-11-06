class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :locality
      t.string :city
      t.string :zipcode
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
