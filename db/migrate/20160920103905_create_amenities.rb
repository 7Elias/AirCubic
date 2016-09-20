class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.integer :listing_id
      t.integer :amenity_id

      t.timestamps null: false
    end
  end
end
