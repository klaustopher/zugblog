require 'rails_helper'

RSpec.describe "train_lines/show", type: :view do
  before(:each) do
    @train_line = assign(:train_line, TrainLine.create!(
      name: "Name",
      vzg_number: 2,
      alt_names: "Alt Names",
      osm_id: "Osm",
      line: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Alt Names/)
    expect(rendered).to match(/Osm/)
    expect(rendered).to match(//)
  end
end
