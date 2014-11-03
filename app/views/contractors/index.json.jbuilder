json.array!(@contractors) do |contractor|
  json.extract! contractor, :id, :company_name, :industry_type, :email, :tel, :jobs_completed, :jobs_feedback_good, :jobs_feedback_bad
  json.url contractor_url(contractor, format: :json)
end
