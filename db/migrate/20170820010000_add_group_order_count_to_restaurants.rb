class AddGroupOrderCountToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :group_orders_count, :integer
  end
end
