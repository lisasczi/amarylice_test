class CreateJoinTableFlowersCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :join_table_flowers_carts do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :flowers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
