class AddColumncToEmail < ActiveRecord::Migration[6.0]
  def change
    add_reference :emails, :user, null: false, foreign_key: true
  end
end
