class ChangeColumnProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, :decimal, precision: 5, scale: 3
  end
end
