class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.integer :wedding_id, null: false
      t.string :title, null: false
      t.string :description
      t.integer :expected_amount
      t.integer :actual_amount
      t.integer :payable_by_id
      t.integer :status, limit: 1

      t.timestamps
    end
  end
end
