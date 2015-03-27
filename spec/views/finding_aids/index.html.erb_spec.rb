require 'rails_helper'

RSpec.describe "finding_aids/index", :type => :view do
  before(:each) do
    assign(:finding_aids, [
      FindingAid.create!(
        :creator => "Creator",
        :title => "Title",
        :dates_inclusive => "Dates Inclusive",
        :dates_bulk => "Dates Bulk",
        :abstract => "MyText",
        :quantity => "MyText",
        :location_note => "MyText",
        :language => "Language",
        :call_phrase => "Call Phrase"
      ),
      FindingAid.create!(
        :creator => "Creator",
        :title => "Title",
        :dates_inclusive => "Dates Inclusive",
        :dates_bulk => "Dates Bulk",
        :abstract => "MyText",
        :quantity => "MyText",
        :location_note => "MyText",
        :language => "Language",
        :call_phrase => "Call Phrase"
      )
    ])
  end

  it "renders a list of finding_aids" do
    render
    assert_select "tr>td", :text => "Creator".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Dates Inclusive".to_s, :count => 2
    assert_select "tr>td", :text => "Dates Bulk".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "Call Phrase".to_s, :count => 2
  end
end
