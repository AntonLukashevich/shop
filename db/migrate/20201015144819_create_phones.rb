class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :phone
      t.string :operator

      t.timestamps
    end
  end
end
