class CreateStrorehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :strorehouses do |t|
      t.integer :count
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
