class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :specification
      t.decimal :product_price
      t.decimal :product_size
      t.boolean :is_spicy
      t.boolean :is_veg
      t.boolean :is_best_offer
      t.boolean :path_to_image
    
      t.timestamps
    end
    
  end
end
