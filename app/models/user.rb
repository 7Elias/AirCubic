class User < ActiveRecord::Base
  include Clearance::User


  # validation for others log in
    validates :email, :uniqueness=>true ,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :password ,presence: true

end
