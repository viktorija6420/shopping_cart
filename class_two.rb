require './class_one.rb'

class ShoppingCart
  def initialize
    @collection_of_products= []
  end

# add an product to the cart
  def add_product(name, base_price)
    new_product = Product.new(name, base_price)
    @collection_of_products << new_product
    return new_product
  end

# remove an product from the cart
  def remove_product
    @collection_of_products.each do |current_product|
      if @collection_of_products.include?(current_product) == true
        @collection_of_products.delete(current_product)

      end
    end
  end

# add up the total cost of all products in the cart before tax
  def all_products_before_tax
    collection_of_products_total = 0
    @collection_of_products.each do |current_product|
    collection_of_products_total += current_product.base_price
    end
  end
# add up the total cost of all products in the cart after tax
  def all_products_after_tax
    ccollection_of_products_total = 0
    @collection_of_products.each do |current_product|
    ccollection_of_products_total += current_product.total_price
    end
  end

end

new_shopping_cart = ShoppingCart.new
new_shopping_cart.add_product("flowers", 50)
new_shopping_cart.remove_product
