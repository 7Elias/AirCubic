class ListingsController < ApplicationController


  before_action :find_listing, only: [:edit, :show]
  def index
    @listing = Listing.all.order('id DESC')
    render template: "home/index"
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
      if @listing.save
        flash[:notice] = "listing was successfully created"
        redirect_to listing_path(@listing)
      else
        render template: "listings/new"
      end
  end

  def edit
  end

  def show
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      redirect_to listing_path(@listing)
    else
      render template: "listings/edit"
    end
  end

  private

  def find_listing


    @listing = Listing.find(params[:id])
  end
  def listing_params
	   params.require(:listing).permit(:list_name, :property_type, :room_type, :city, :location, {:amenity_ids=>[]}, :capacity)
  end
end
