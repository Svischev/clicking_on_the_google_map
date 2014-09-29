require 'spec_helper'

describe "buildings/edit" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :address => "MyString",
      :coordinate_lat => "9.99",
      :coordinate_lng => "9.99"
    ))
  end

  it "renders the edit building form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", building_path(@building), "post" do
      assert_select "input#building_address[name=?]", "building[address]"
      assert_select "input#building_coordinate_lat[name=?]", "building[coordinate_lat]"
      assert_select "input#building_coordinate_lng[name=?]", "building[coordinate_lng]"
    end
  end
end
