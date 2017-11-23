class Product < ActiveRecord::Base
  VALID_CATEGORIES = ['Starter', 'Main course', 'Dessert']

  validates :name, :description, presence: true
  validates_inclusion_of :category, in: VALID_CATEGORIES
end
