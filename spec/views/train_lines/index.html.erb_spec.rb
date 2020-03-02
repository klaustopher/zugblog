require 'rails_helper'

RSpec.describe "train_lines/index", type: :view do
  before(:each) do
    assign(:train_lines, [
      TrainLine.create!(
        name: "Name",
        vzg_number: 2,
        alt_names: "Alt Names",
        osm_id: "Osm",
        line: ""
      ),
      TrainLine.create!(
        name: "Name",
        vzg_number: 2,
        alt_names: "Alt Names",
        osm_id: "Osm",
        line: ""
      )
    ])
  end

  it "renders a list of train_lines" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Alt Names".to_s, count: 2
    assert_select "tr>td", text: "Osm".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
