json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :father_name, :cnic, :city
  json.url customer_url(customer, format: :json)
end
