class CreateWeddings < ActiveRecord::Migration[5.1]
  def change
    create_table :weddings do |t|
      t.string :name
      t.integer :bride_id
      t.integer :groom_id
      t.integer :created_by_id
      t.datetime :wedding_date
      t.string :wedding_venue
      t.integer :status, limit: 1

      t.timestamps
    end
  end
end
