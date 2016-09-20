class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :type_of
      t.string :property
      t.string :room_type
      t.string :city
      t.string :location
      t.string :capacity
      t.integer :user_id
      t.timestamps
    end
  end
end
