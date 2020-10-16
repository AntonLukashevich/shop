class AddColumncToPhone < ActiveRecord::Migration[6.0]
  def change
    add_reference :phones, :user, null: false, foreign_key: true
  end
end
