class Flower < ApplicationRecord
  has_many :join_table_flowers_carts, dependent: :nullify
  # has_one_attached :image

  validates :name, presence: true
  # validates :image, presence: true
  validates :description, presence: true
  validates :price, presence: true
  # validates :quantity, presence: true

end
