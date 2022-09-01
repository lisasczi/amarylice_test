class AddQuantityToFlowers < ActiveRecord::Migration[6.1]
  def change
    add_column :flowers, :quantity, :integer
  end

end
