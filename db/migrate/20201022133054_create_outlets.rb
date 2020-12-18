class CreateOutlets < ActiveRecord::Migration[6.0]
  def change
    create_table :outlets do |t|
      t.string :title
      t.string :address

      t.timestamps
    end
  end
end
