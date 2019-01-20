class Product < ApplicationRecord

  validates :title, :price, :inventory_count, presence: true
  validates :title, length: { minimum: 3 }
  validates :inventory_count, :price, numericality: {greater_than_or_equal_to: 0}
  validates :inventory_count, numericality: { only_integer: true }

  scope :available, -> { where("inventory_count > 0") }

  scope :paginate, ->(page, limit) { order(:id).offset(page * limit).limit(limit) }

  # Returns true if a purchase is bought, false otherwise
  def buy
    if @product.inventory_count == 0
      return false
    else
      # for now, decrementing the inventory count when purchasing a product will do
      self.decrement!(:inventory_count)
      # in the future, could return a receipt number, etc.
      return true
    end
  end

end
