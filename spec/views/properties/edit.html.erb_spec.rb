require 'rails_helper'

RSpec.describe "properties/edit", :type => :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :address => "MyString",
      :landlord_id => 1,
      :longitude => 1.5,
      :latitude => 1.5,
      :works => false,
      :work_type => "MyString"
    ))
  end

  it "renders the edit property form" do
    render

    assert_select "form[action=?][method=?]", property_path(@property), "post" do

      assert_select "input#property_address[name=?]", "property[address]"

      assert_select "input#property_landlord_id[name=?]", "property[landlord_id]"

      assert_select "input#property_longitude[name=?]", "property[longitude]"

      assert_select "input#property_latitude[name=?]", "property[latitude]"

      assert_select "input#property_works[name=?]", "property[works]"

      assert_select "input#property_work_type[name=?]", "property[work_type]"
    end
  end
end
