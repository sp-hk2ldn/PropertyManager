require 'rails_helper'

RSpec.describe "works/new", :type => :view do
  before(:each) do
    assign(:work, Work.new(
      :type => "",
      :property_id => 1
    ))
  end

  it "renders new work form" do
    render

    assert_select "form[action=?][method=?]", works_path, "post" do

      assert_select "input#work_type[name=?]", "work[type]"

      assert_select "input#work_property_id[name=?]", "work[property_id]"
    end
  end
end
