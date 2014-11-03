require 'rails_helper'

RSpec.describe "works/edit", :type => :view do
  before(:each) do
    @work = assign(:work, Work.create!(
      :type => "",
      :property_id => 1
    ))
  end

  it "renders the edit work form" do
    render

    assert_select "form[action=?][method=?]", work_path(@work), "post" do

      assert_select "input#work_type[name=?]", "work[type]"

      assert_select "input#work_property_id[name=?]", "work[property_id]"
    end
  end
end
