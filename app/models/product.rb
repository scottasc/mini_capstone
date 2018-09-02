class Product < ApplicationRecord

  def is_discounted?
    price < 100 #statements like this (<, >, ==, <=, >=, etc.) return a boolean. It's a convention to end the method with a question mark.
    # if price < 100 
        # return true
    # else
        # return false
    # end
  end

  def tax
    price * 0.09
  end

  def total
    total = price + tax
  end

end