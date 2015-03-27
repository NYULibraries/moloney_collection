require 'rails_helper'

RSpec.describe "finding_aids/show", :type => :view do
  before(:each) do
    @finding_aid = assign(:finding_aid, FindingAid.create!(
      :creator => "Creator",
      :title => "Title",
      :dates_inclusive => "Dates Inclusive",
      :dates_bulk => "Dates Bulk",
      :abstract => "MyText",
      :quantity => "MyText",
      :location_note => "MyText",
      :language => "Language",
      :call_phrase => "Call Phrase"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Creator/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Dates Inclusive/)
    expect(rendered).to match(/Dates Bulk/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Call Phrase/)
  end
end
