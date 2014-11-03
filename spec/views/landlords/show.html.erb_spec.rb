require 'rails_helper'

RSpec.describe "landlords/show", :type => :view do
  before(:each) do
    @landlord = assign(:landlord, Landlord.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :tel => "Tel",
      :address => "Address",
      :property_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/1/)
  end
end
