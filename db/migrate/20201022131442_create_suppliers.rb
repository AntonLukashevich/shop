class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :title
      t.string :address

      t.timestamps
    end
  end
end
