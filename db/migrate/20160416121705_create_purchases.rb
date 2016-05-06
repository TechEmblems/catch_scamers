class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :customer_id
      t.string :item_name
      t.date :purchase_date
      t.string :tenure
      t.date :last_installment_paid_on
      t.date :next_installment_due_on

      t.timestamps
    end
  end
end
