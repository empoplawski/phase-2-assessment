class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :amount, null: false
      t.datetime :bid_date, null: false
      t.integer :user_id, null: false
       t.integer :item_id, null: false

      t.timestamps
    end
  end
end
