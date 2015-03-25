class AddSecondIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :second_id, :integer
  end
end
