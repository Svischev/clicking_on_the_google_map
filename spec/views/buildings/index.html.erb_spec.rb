require 'spec_helper'

describe "buildings/index" do
  before(:each) do
    assign(:buildings, [
      stub_model(Building,
        :address => "Address",
        :coordinate_lat => "9.99",
        :coordinate_lng => "9.99"
      ),
      stub_model(Building,
        :address => "Address",
        :coordinate_lat => "9.99",
        :coordinate_lng => "9.99"
      )
    ])
  end

  it "renders a list of buildings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
