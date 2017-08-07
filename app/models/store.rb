class Store < ApplicationRecord
  # belongs_to :tipo
  # belongs_to :customer

  geocoded_by :address
  after_validation :geocode
end
