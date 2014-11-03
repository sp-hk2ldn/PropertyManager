require 'rails_helper'

RSpec.describe "works/index", :type => :view do
  before(:each) do
    assign(:works, [
      Work.create!(
        :type => "Type",
        :property_id => 1
      ),
      Work.create!(
        :type => "Type",
        :property_id => 1
      )
    ])
  end

  it "renders a list of works" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
