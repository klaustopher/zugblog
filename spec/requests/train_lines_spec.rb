require 'rails_helper'

RSpec.describe "TrainLines", type: :request do
  describe "GET /train_lines" do
    it "works! (now write some real specs)" do
      get train_lines_path
      expect(response).to have_http_status(200)
    end
  end
end
