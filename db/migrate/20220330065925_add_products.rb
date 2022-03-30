class AddProducts < ActiveRecord::Migration[5.2]
  def change
    Product.create :product_name => 'ASUS motherboard', :specification => 'Greate choice for your PC', :product_price => 5000, :product_size => 'Mini-ITX', :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/Fq1B5baxukR3U.jpg'

    Product.create :product_name => 'ASUS drive', :specification => 'Drive for PC', :product_price => 650, :product_size => 'DVD RW DL', :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/MqMJ1raxnko.jpg'

    Product.create :product_name => 'Gigabyte DDR3', :specification => 'LGA775 DDR3 gigabyte GA-EG41MFT-US2H for PC', :product_price => 2200, :product_size => 'DDR3', :is_spicy => false, :is_veg => false, :is_best_offer => true, :path_to_image => '/images/qvbQ7baxBh.jpg'
  end
end
