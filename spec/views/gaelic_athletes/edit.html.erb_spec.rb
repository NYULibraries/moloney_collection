require 'rails_helper'

RSpec.describe "gaelic_athletes/edit", :type => :view do
  before(:each) do
    @gaelic_athlete = assign(:gaelic_athlete, GaelicAthlete.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit gaelic_athlete form" do
    render

    assert_select "form[action=?][method=?]", gaelic_athlete_path(@gaelic_athlete), "post" do

      assert_select "input#gaelic_athlete_name[name=?]", "gaelic_athlete[name]"

      assert_select "textarea#gaelic_athlete_description[name=?]", "gaelic_athlete[description]"
    end
  end
end
