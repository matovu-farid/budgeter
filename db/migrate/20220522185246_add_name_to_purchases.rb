class AddNameToPurchases < ActiveRecord::Migration[7.0]
  def change
    add_column :purchases, :name, :string
  end
end
