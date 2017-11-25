json.extract! customer_request, :id, :customer_name, :customer_phone, :brand, :notes, :status, :deposit, :created_at, :updated_at
json.url customer_request_url(customer_request, format: :json)
