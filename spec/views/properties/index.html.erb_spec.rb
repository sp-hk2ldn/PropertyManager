require 'rails_helper'

RSpec.describe "properties/index", :type => :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        :address => "Address",
        :landlord_id => 1,
        :longitude => 1.5,
        :latitude => 1.5,
        :works => false,
        :work_type => "Work Type"
      ),
      Property.create!(
        :address => "Address",
        :landlord_id => 1,
        :longitude => 1.5,
        :latitude => 1.5,
        :works => false,
        :work_type => "Work Type"
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Work Type".to_s, :count => 2
  end
end
