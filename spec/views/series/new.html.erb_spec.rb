require 'rails_helper'

RSpec.describe "series/new", :type => :view do
  before(:each) do
    assign(:series, Series.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new series form" do
    render

    assert_select "form[action=?][method=?]", series_index_path, "post" do

      assert_select "input#series_title[name=?]", "series[title]"

      assert_select "textarea#series_description[name=?]", "series[description]"
    end
  end
end
