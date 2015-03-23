require 'rails_helper'

RSpec.describe "gaelic_athletes/new", :type => :view do
  before(:each) do
    assign(:gaelic_athlete, GaelicAthlete.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new gaelic_athlete form" do
    render

    assert_select "form[action=?][method=?]", gaelic_athletes_path, "post" do

      assert_select "input#gaelic_athlete_name[name=?]", "gaelic_athlete[name]"

      assert_select "textarea#gaelic_athlete_description[name=?]", "gaelic_athlete[description]"
    end
  end
end
