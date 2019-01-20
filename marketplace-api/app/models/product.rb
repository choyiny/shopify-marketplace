class Product < ApplicationRecord

  validates :title, :price, :inventory_count, presence: true
  validates :inventory_count, :price, numericality: {greater_than_or_equal_to: 0}
  validates :inventory_count, numericality: { only_integer: true }

  scope :available, -> { where("inventory_count > 0") }

end
