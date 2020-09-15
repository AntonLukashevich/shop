class CreateProductGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :product_groups do |t|
      t.string :title

      t.timestamps
    end
  end
end
