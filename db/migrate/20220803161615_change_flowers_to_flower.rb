class ChangeFlowersToFlower < ActiveRecord::Migration[6.1]
  def change
    rename_column :join_table_flowers_carts, :flowers_id, :flower_id
  end
end
