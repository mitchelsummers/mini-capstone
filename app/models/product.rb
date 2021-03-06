class Product < ApplicationRecord
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :supplier

  validates :name,  presence: true, uniqueness: true, length: { minimum: 2 }
  validates :image_url,  presence: true
  validates :description, length: { maximum: 500 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  # def categories
  #   category_products.map do |category_product|
  #     category_product.category
  #   end
  # end 
  def is_discounted?
    price < 10
  end
  def tax
    price * 0.09
  end
  def total
    tax + price
  end
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  def images
    Image.where(product_id: id)
  end
end
