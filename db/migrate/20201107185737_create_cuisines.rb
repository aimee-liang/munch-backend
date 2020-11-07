class CreateCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisines do |t|
      t.integer :restaurant_id
      t.integer :cuisine_id
      t.string :cuisine_name
      t.timestamps
    end
  end
end
