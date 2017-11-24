class Product < ActiveRecord::Base
  has_many :order_items


  VALID_CATEGORIES = ['Starter', 'Main course', 'Dessert']

  validates :name, :description, presence: true
  validates_inclusion_of :category, in: VALID_CATEGORIES
end
