require 'rails_helper'

RSpec.describe "finding_aids/new", :type => :view do
  before(:each) do
    assign(:finding_aid, FindingAid.new(
      :creator => "MyString",
      :title => "MyString",
      :dates_inclusive => "MyString",
      :dates_bulk => "MyString",
      :abstract => "MyText",
      :quantity => "MyText",
      :location_note => "MyText",
      :language => "MyString",
      :call_phrase => "MyString"
    ))
  end

  it "renders new finding_aid form" do
    render

    assert_select "form[action=?][method=?]", finding_aids_path, "post" do

      assert_select "input#finding_aid_creator[name=?]", "finding_aid[creator]"

      assert_select "input#finding_aid_title[name=?]", "finding_aid[title]"

      assert_select "input#finding_aid_dates_inclusive[name=?]", "finding_aid[dates_inclusive]"

      assert_select "input#finding_aid_dates_bulk[name=?]", "finding_aid[dates_bulk]"

      assert_select "textarea#finding_aid_abstract[name=?]", "finding_aid[abstract]"

      assert_select "textarea#finding_aid_quantity[name=?]", "finding_aid[quantity]"

      assert_select "textarea#finding_aid_location_note[name=?]", "finding_aid[location_note]"

      assert_select "input#finding_aid_language[name=?]", "finding_aid[language]"

      assert_select "input#finding_aid_call_phrase[name=?]", "finding_aid[call_phrase]"
    end
  end
end
