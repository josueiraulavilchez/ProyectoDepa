json.extract! customer, :id, :name, :surname, :dni, :mail, :phone, :message, :status, :created_at, :updated_at
json.url customer_url(customer, format: :json)
