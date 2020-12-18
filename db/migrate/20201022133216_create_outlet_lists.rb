class CreateOutletLists < ActiveRecord::Migration[6.0]
  def change
    create_table :outlet_lists do |t|
      t.integer :count
      t.money :price
      t.references :outlet, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
