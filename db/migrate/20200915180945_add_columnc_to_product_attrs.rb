class AddColumncToProductAttrs < ActiveRecord::Migration[6.0]
  def change
    add_column :product_attrs, :value, :string
  end
end
