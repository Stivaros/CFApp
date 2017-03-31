class AddTierToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :tier, :string
  end
end
