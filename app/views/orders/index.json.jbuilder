json.array!(@orders) do |order|
  json.extract! order, :id, :amount, :order_date, :user_id
  json.url order_url(order, format: :json)
end
