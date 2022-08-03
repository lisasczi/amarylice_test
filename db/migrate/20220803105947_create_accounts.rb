class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.string :country
      t.string :postal_code
      t.string :city
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
