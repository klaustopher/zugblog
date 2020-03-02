require 'rails_helper'

RSpec.describe "train_lines/new", type: :view do
  before(:each) do
    assign(:train_line, TrainLine.new(
      name: "MyString",
      vzg_number: 1,
      alt_names: "MyString",
      osm_id: "MyString",
      line: ""
    ))
  end

  it "renders new train_line form" do
    render

    assert_select "form[action=?][method=?]", train_lines_path, "post" do

      assert_select "input[name=?]", "train_line[name]"

      assert_select "input[name=?]", "train_line[vzg_number]"

      assert_select "input[name=?]", "train_line[alt_names]"

      assert_select "input[name=?]", "train_line[osm_id]"

      assert_select "input[name=?]", "train_line[line]"
    end
  end
end
