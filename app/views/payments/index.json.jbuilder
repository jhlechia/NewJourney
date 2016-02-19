json.array!(@payments) do |payment|
  json.extract! payment, :id, :payment_type, :credit_card_number, :email, :address, :billing_address, :city, :state, :zip
  json.url payment_url(payment, format: :json)
end
