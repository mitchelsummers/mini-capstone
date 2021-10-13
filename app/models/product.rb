class Product
  attr_accessor :name, :price, :image_url, :description
  def initialize(options)
    @name = options[:name] 
    @price = options[:price] 
    @image_url = options[:image_url] 
    @description = options[:description]    
  end
end