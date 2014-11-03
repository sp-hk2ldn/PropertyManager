require 'rails_helper'

RSpec.describe "contractors/new", :type => :view do
  before(:each) do
    assign(:contractor, Contractor.new(
      :company_name => "MyString",
      :industry_type => "MyString",
      :email => "MyString",
      :tel => "MyString",
      :jobs_completed => 1,
      :jobs_feedback_good => 1,
      :jobs_feedback_bad => 1
    ))
  end

  it "renders new contractor form" do
    render

    assert_select "form[action=?][method=?]", contractors_path, "post" do

      assert_select "input#contractor_company_name[name=?]", "contractor[company_name]"

      assert_select "input#contractor_industry_type[name=?]", "contractor[industry_type]"

      assert_select "input#contractor_email[name=?]", "contractor[email]"

      assert_select "input#contractor_tel[name=?]", "contractor[tel]"

      assert_select "input#contractor_jobs_completed[name=?]", "contractor[jobs_completed]"

      assert_select "input#contractor_jobs_feedback_good[name=?]", "contractor[jobs_feedback_good]"

      assert_select "input#contractor_jobs_feedback_bad[name=?]", "contractor[jobs_feedback_bad]"
    end
  end
end
