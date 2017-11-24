class Order < ActiveRecord::Base
  has_many :order_items

  def total
    self.order_items.reduce(0) do |sum, obj|
      sum + obj.product.price
    end
  end
end
