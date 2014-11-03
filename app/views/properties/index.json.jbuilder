json.array!(@properties) do |property|
  json.extract! property, :id, :address, :landlord_id, :longitude, :latitude, :works, :work_type
  json.url property_url(property, format: :json)
end
