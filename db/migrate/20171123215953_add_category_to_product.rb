class AddCategoryToProduct < ActiveRecord::Migration[4.2]
  def change
    add_column :products, :category, :string
  end
end
