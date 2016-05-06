json.array!(@installments) do |installment|
  json.extract! installment, :id, :purchase_id, :amount, :paid_on
  json.url installment_url(installment, format: :json)
end
