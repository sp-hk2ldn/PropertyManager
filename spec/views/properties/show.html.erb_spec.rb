require 'rails_helper'

RSpec.describe "properties/show", :type => :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :address => "Address",
      :landlord_id => 1,
      :longitude => 1.5,
      :latitude => 1.5,
      :works => false,
      :work_type => "Work Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Work Type/)
  end
end
