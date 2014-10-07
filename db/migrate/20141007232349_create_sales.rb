class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :amount
      t.time :purchase_time
      t.date :purchase_date
      t.integer :vendor_id
      t.integer :product_id

      t.timestamps
    end
  end
end
