class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :zomato_id
      t.string :cuisines
      t.string :address
      t.string :zip
      t.string :photos_url
      t.timestamps
    end
  end
end
