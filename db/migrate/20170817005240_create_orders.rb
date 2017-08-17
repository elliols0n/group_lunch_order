class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :dish_id
      t.string :user_comment
      t.integer :group_order_id

      t.timestamps

    end
  end
end
