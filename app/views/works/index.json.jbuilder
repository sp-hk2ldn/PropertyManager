json.array!(@works) do |work|
  json.extract! work, :id, :type, :raised_date, :due_date, :property_id
  json.url work_url(work, format: :json)
end
