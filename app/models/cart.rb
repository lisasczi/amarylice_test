class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :join_table_flowers_carts, dependent: :nullify
end
