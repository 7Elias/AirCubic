class Reservation < ActiveRecord::Base
  has_and_belongs_to_many :listings
  has_many :users

end
