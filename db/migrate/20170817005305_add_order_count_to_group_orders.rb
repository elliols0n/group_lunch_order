class AddOrderCountToGroupOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :group_orders, :orders_count, :integer
  end
end
