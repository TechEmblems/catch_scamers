class CreateInstallments < ActiveRecord::Migration
  def change
    create_table :installments do |t|
      t.integer :purchase_id
      t.string :amount
      t.date :paid_on

      t.timestamps
    end
  end
end
