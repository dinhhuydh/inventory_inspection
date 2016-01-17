class ProductItem < ActiveRecord::Base
  belongs_to :products_inspection
  belongs_to :product
end
