  json.array!(@statements) do |statement|
  json.extract! statement, :id, :generated, :due, :from, :to
  json.url statement_url(statement, format: :json)
end
