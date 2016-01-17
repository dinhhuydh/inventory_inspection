class ProductsInspection < ActiveRecord::Base
  belongs_to :user
  has_many :product_items, dependent: :destroy
end
