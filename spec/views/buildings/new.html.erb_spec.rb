require 'spec_helper'

describe "buildings/new" do
  before(:each) do
    assign(:building, stub_model(Building,
      :address => "MyString",
      :coordinate_lat => "9.99",
      :coordinate_lng => "9.99"
    ).as_new_record)
  end

  it "renders new building form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", buildings_path, "post" do
      assert_select "input#building_address[name=?]", "building[address]"
      assert_select "input#building_coordinate_lat[name=?]", "building[coordinate_lat]"
      assert_select "input#building_coordinate_lng[name=?]", "building[coordinate_lng]"
    end
  end
end
