class CustomerPhoneToBeStringInCustomerRequests < ActiveRecord::Migration[5.1]
  def change
    change_column :customer_requests, :customer_phone, :string
  end
end
