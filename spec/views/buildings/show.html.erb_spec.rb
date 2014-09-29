require 'spec_helper'

describe "buildings/show" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :address => "Address",
      :coordinate_lat => "9.99",
      :coordinate_lng => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
