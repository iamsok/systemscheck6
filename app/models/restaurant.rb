class Restaurant < ActiveRecord::Base
  validates :name, :address, :city, :state, :zipcode, presence: true
end
