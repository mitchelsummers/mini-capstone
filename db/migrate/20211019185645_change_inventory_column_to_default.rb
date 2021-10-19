class ChangeInventoryColumnToDefault < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :inventory, :integer, default: 0
  end
end
