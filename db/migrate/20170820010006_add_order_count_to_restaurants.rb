class AddOrderCountToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :orders_count, :integer
  end
end
