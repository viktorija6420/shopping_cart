
# Each product has a name, base price, and tax rate. There should
 # also be a method to calculate and return the product's total
 # price based on the base price and tax rate.

class Product
  @@tax_rate = 1.05

  def initialize(name,base_price)
    @name = name
    @base_price = base_price
  end

  def base_price
    @base_price
  end

  def name
    @name
  end

  def total_price
    total_sales_tax = @base_price * @@tax_rate
    total_price = total_sales_tax + @base_price
  return total_price
  end

end

new_product = Product.new("flowers", 43)
puts new_product
