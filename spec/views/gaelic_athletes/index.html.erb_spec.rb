require 'rails_helper'

RSpec.describe "gaelic_athletes/index", :type => :view do
  before(:each) do
    assign(:gaelic_athletes, [
      GaelicAthlete.create!(
        :name => "Name",
        :description => "MyText"
      ),
      GaelicAthlete.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of gaelic_athletes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
