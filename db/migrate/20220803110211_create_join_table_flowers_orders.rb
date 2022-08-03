class CreateJoinTableFlowersOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :join_table_flowers_orders do |t|
      t.references :flower, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
