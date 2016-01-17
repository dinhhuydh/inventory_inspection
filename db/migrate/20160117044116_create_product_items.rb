class CreateProductItems < ActiveRecord::Migration
  def change
    create_table :product_items do |t|
      t.integer :products_inspection_id
      t.integer :product_id
      t.integer :total
      t.integer :remainder

      t.timestamps null: false
    end

    add_index :product_items, :product_id
    add_index :product_items, :products_inspection_id
  end
end
