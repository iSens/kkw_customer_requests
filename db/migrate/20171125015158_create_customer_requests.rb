class CreateCustomerRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_requests do |t|
      t.string :customer_name
      t.string :customer_phone
      t.string :brand
      t.string :notes
      t.string :status
      t.boolean :deposit

      t.timestamps
    end
  end
end
