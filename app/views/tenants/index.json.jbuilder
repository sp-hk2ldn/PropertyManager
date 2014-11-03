json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :first_name, :last_name, :email, :tel, :lease_commenced, :lease_end, :property_id
  json.url tenant_url(tenant, format: :json)
end
