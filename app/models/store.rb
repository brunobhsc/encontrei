class Store < ApplicationRecord
  # belongs_to :tipo
  # belongs_to :customer

  has_many :products

  geocoded_by :address
  after_validation :geocode
end
