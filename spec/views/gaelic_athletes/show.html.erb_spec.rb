require 'rails_helper'

RSpec.describe "gaelic_athletes/show", :type => :view do
  before(:each) do
    @gaelic_athlete = assign(:gaelic_athlete, GaelicAthlete.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
