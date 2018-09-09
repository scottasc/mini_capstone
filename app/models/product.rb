class Product < ApplicationRecord

  # validates :name, presence: true
  # validates :name, uniqueness: true

  # validates :description, presence: true
  # validates :description, length: { in: 1..200 }

  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  belongs_to :supplier
  has_many :images

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