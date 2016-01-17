class ProductsInspection < ActiveRecord::Base
  belongs_to :user
  belongs_to :area
  has_many :product_items, dependent: :destroy
  accepts_nested_attributes_for :product_items

  validates_presence_of :user
end
