require "rails_helper"

RSpec.describe TrainLinesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/train_lines").to route_to("train_lines#index")
    end

    it "routes to #new" do
      expect(get: "/train_lines/new").to route_to("train_lines#new")
    end

    it "routes to #show" do
      expect(get: "/train_lines/1").to route_to("train_lines#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/train_lines/1/edit").to route_to("train_lines#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/train_lines").to route_to("train_lines#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/train_lines/1").to route_to("train_lines#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/train_lines/1").to route_to("train_lines#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/train_lines/1").to route_to("train_lines#destroy", id: "1")
    end
  end
end
