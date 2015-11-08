json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :sub_type, :name, :cost
  json.url subscription_url(subscription, format: :json)
end
