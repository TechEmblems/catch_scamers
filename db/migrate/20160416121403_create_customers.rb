class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :father_name
      t.string :cnic
      t.string :city

      t.timestamps
    end
  end
end
