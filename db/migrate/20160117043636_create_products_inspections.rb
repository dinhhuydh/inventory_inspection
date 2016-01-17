class CreateProductsInspections < ActiveRecord::Migration
  def change
    create_table :products_inspections do |t|
      t.date :date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
