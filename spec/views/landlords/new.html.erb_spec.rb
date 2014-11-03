require 'rails_helper'

RSpec.describe "landlords/new", :type => :view do
  before(:each) do
    assign(:landlord, Landlord.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :tel => "MyString",
      :address => "MyString",
      :property_id => 1
    ))
  end

  it "renders new landlord form" do
    render

    assert_select "form[action=?][method=?]", landlords_path, "post" do

      assert_select "input#landlord_first_name[name=?]", "landlord[first_name]"

      assert_select "input#landlord_last_name[name=?]", "landlord[last_name]"

      assert_select "input#landlord_email[name=?]", "landlord[email]"

      assert_select "input#landlord_tel[name=?]", "landlord[tel]"

      assert_select "input#landlord_address[name=?]", "landlord[address]"

      assert_select "input#landlord_property_id[name=?]", "landlord[property_id]"
    end
  end
end
