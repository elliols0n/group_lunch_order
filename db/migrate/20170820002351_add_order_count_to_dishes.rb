class AddOrderCountToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :orders_count, :integer
  end
end
