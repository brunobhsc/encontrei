class Store < ApplicationRecord
  # belongs_to :tipo
  # belongs_to :customer
  belongs_to :user

  has_many :tags, as: :taggable

  geocoded_by :address
  after_validation :geocode
end
