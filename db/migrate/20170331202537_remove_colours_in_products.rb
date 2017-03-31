class RemoveColoursInProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :colour
  end
end
