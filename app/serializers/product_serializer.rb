class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total, :images
  
  belongs_to :supplier
  has_many :images
end
