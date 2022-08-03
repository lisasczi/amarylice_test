class Flower < ApplicationRecord
  has_many :join_table_flowers_carts, dependent: :nullify

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
