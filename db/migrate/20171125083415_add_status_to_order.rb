class AddStatusToOrder < ActiveRecord::Migration[4.2]
  def change
    add_column :orders, :status, :string, default: 'pending'
  end
end
