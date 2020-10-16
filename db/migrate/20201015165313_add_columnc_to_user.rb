class AddColumncToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address, :reference
  end
end
