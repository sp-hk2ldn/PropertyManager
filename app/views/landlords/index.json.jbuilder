json.array!(@landlords) do |landlord|
  json.extract! landlord, :id, :first_name, :last_name, :email, :tel, :address, :date_registered, :property_id
  json.url landlord_url(landlord, format: :json)
end
