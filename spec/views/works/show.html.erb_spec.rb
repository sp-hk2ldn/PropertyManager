require 'rails_helper'

RSpec.describe "works/show", :type => :view do
  before(:each) do
    @work = assign(:work, Work.create!(
      :type => "Type",
      :property_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/1/)
  end
end
