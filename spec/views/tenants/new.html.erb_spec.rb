require 'rails_helper'

RSpec.describe "tenants/new", :type => :view do
  before(:each) do
    assign(:tenant, Tenant.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :tel => "MyString",
      :property_id => 1
    ))
  end

  it "renders new tenant form" do
    render

    assert_select "form[action=?][method=?]", tenants_path, "post" do

      assert_select "input#tenant_first_name[name=?]", "tenant[first_name]"

      assert_select "input#tenant_last_name[name=?]", "tenant[last_name]"

      assert_select "input#tenant_email[name=?]", "tenant[email]"

      assert_select "input#tenant_tel[name=?]", "tenant[tel]"

      assert_select "input#tenant_property_id[name=?]", "tenant[property_id]"
    end
  end
end
