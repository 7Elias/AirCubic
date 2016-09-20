class CreateListingAmenities < ActiveRecord::Migration
  def change
    create_table :listing_amenities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
