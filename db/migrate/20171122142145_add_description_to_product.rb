class AddDescriptionToProduct < ActiveRecord::Migration[4.2]
  def change
    add_column :products, :description, :text
  end
end
