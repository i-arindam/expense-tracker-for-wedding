class AddWeddingIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :wedding_id, :integer
  end
end
