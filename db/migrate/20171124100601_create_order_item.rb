class CreateOrderItem < ActiveRecord::Migration[4.2]
  def change
    create_table :order_items do |t|
      t.timestamps
    end
  end

end
