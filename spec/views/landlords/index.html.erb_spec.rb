require 'rails_helper'

RSpec.describe "landlords/index", :type => :view do
  before(:each) do
    assign(:landlords, [
      Landlord.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :tel => "Tel",
        :address => "Address",
        :property_id => 1
      ),
      Landlord.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :tel => "Tel",
        :address => "Address",
        :property_id => 1
      )
    ])
  end

  it "renders a list of landlords" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
