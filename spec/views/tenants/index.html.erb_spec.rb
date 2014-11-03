require 'rails_helper'

RSpec.describe "tenants/index", :type => :view do
  before(:each) do
    assign(:tenants, [
      Tenant.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :tel => "Tel",
        :property_id => 1
      ),
      Tenant.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :tel => "Tel",
        :property_id => 1
      )
    ])
  end

  it "renders a list of tenants" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
