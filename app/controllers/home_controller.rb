class HomeController < ApplicationController
  def index
    @listings = Listing.all.order("created_at desc")
    render template: "home/index"
  end


end
