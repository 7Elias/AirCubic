class ListingsController < ApplicationController

  def listing_params
	params.require(:listing).permit(:list_name, :property_type, :room_type, :city, :location, :capacity, {:amenity_ids=>[]})
  end
