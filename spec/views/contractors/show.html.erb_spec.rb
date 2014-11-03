require 'rails_helper'

RSpec.describe "contractors/show", :type => :view do
  before(:each) do
    @contractor = assign(:contractor, Contractor.create!(
      :company_name => "Company Name",
      :industry_type => "Industry Type",
      :email => "Email",
      :tel => "Tel",
      :jobs_completed => 1,
      :jobs_feedback_good => 2,
      :jobs_feedback_bad => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Industry Type/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
