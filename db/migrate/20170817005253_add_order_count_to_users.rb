class AddOrderCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :orders_count, :integer
  end
end
