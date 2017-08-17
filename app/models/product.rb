class Product < ApplicationRecord
  # belongs_to :category
  belongs_to :store
  belongs_to :user
end
