json.array!(@buy_and_keeps) do |buy_and_keep|
  json.extract! buy_and_keep, :id, :title, :cost
  json.url buy_and_keep_url(buy_and_keep, format: :json)
end
