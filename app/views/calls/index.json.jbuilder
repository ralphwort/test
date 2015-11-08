json.array!(@calls) do |call|
  json.extract! call, :id, :called, :duration, :cost
  json.url call_url(call, format: :json)
end
