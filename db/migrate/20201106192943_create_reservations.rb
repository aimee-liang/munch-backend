class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.datetime :datetime
      t.integer :guests
      t.timestamps
    end
  end
end
