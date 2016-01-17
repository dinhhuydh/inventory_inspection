class ProductsInspection < ActiveRecord::Base
  belongs_to :user
  has_many :product_items, dependent: :destroy
  accepts_nested_attributes_for :product_items
end
