class Listing < ActiveRecord::Base
  has_many :listings_amenities
  has_many :amenities, through: :listing_amenity


end
