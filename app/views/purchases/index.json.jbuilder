json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :user_id, :customer_id, :item_name, :purchase_date, :tenure, :last_installment_paid_on, :next_installment_due_on
  json.url purchase_url(purchase, format: :json)
end
