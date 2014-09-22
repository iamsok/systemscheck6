class Restaurant < ActiveRecord::Base
  validates :name, :address, :city, :state, :zipcode, presence: true

  has_many :reviews
end
