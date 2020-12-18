class CreateSupplierLists < ActiveRecord::Migration[6.0]
  def change
    create_table :supplier_lists do |t|
      t.money :price
      t.integer :count
      t.string :number_doc
      t.integer :guarantee
      t.references :product, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
