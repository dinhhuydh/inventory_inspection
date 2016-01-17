class AddAreaIdToProductsInspections < ActiveRecord::Migration
  def change
    add_column :products_inspections, :area_id, :integer
    add_index :products_inspections, :area_id
  end
end
