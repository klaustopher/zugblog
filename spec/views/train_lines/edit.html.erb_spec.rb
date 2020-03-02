require 'rails_helper'

RSpec.describe "train_lines/edit", type: :view do
  before(:each) do
    @train_line = assign(:train_line, TrainLine.create!(
      name: "MyString",
      vzg_number: 1,
      alt_names: "MyString",
      osm_id: "MyString",
      line: ""
    ))
  end

  it "renders the edit train_line form" do
    render

    assert_select "form[action=?][method=?]", train_line_path(@train_line), "post" do

      assert_select "input[name=?]", "train_line[name]"

      assert_select "input[name=?]", "train_line[vzg_number]"

      assert_select "input[name=?]", "train_line[alt_names]"

      assert_select "input[name=?]", "train_line[osm_id]"

      assert_select "input[name=?]", "train_line[line]"
    end
  end
end
