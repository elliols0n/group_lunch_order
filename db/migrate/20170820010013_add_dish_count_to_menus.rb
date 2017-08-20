class AddDishCountToMenus < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :dishes_count, :integer
  end
end
