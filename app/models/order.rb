class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  # def subtotal
  #   product.find_by[product_id].price
  # end
  # def tax
  #   product.find_by[product_id] * 0.09
  # end
  # def total
  #   subtotal + tax
  # end
end
