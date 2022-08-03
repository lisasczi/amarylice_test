class AddQuantityToJoinTableFlowersCart < ActiveRecord::Migration[6.1]
  def change
    add_column :join_table_flowers_carts, :quantity, :integer
  end
end
