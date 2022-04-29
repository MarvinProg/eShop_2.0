class AddOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.text :input_orders
      t.text :name_customer
      t.text :phone_customer
      t.text :place_delivery
    
      t.timestamps
    end
  end
end
