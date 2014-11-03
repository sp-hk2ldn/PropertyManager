require 'rails_helper'

RSpec.describe "contractors/index", :type => :view do
  before(:each) do
    assign(:contractors, [
      Contractor.create!(
        :company_name => "Company Name",
        :industry_type => "Industry Type",
        :email => "Email",
        :tel => "Tel",
        :jobs_completed => 1,
        :jobs_feedback_good => 2,
        :jobs_feedback_bad => 3
      ),
      Contractor.create!(
        :company_name => "Company Name",
        :industry_type => "Industry Type",
        :email => "Email",
        :tel => "Tel",
        :jobs_completed => 1,
        :jobs_feedback_good => 2,
        :jobs_feedback_bad => 3
      )
    ])
  end

  it "renders a list of contractors" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Industry Type".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
