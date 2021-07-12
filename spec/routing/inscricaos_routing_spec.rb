require "rails_helper"

RSpec.describe InscricaosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/inscricaos").to route_to("inscricaos#index")
    end

    it "routes to #new" do
      expect(get: "/inscricaos/new").to route_to("inscricaos#new")
    end

    it "routes to #show" do
      expect(get: "/inscricaos/1").to route_to("inscricaos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/inscricaos/1/edit").to route_to("inscricaos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/inscricaos").to route_to("inscricaos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/inscricaos/1").to route_to("inscricaos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/inscricaos/1").to route_to("inscricaos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/inscricaos/1").to route_to("inscricaos#destroy", id: "1")
    end
  end
end
