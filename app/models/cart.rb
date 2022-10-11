class Cart < ApplicationRecord
  belongs_to :user

  has_many :carts_products
  has_many :products, through: :carts_products, dependent: :destroy

  def self.active
    where(is_order: false).first
  end

  def total
    products.map(&:price).inject(0, :+)
  end

  def empty?
    products.empty?
  end
end
