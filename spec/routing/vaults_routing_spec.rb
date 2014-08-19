require "spec_helper"

describe VaultsController do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/vaults").to route_to("vaults#index")
    end

    it "routes to #new" do
      expect(get: "/vaults/new").to route_to("vaults#new")
    end

    it "routes to #show" do
      expect(get: "/vaults/1").to route_to("vaults#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get: "/vaults/1/edit").to route_to("vaults#edit", :id => "1")
    end

    it "routes to #create" do
      expect(post: "/vaults").to route_to("vaults#create")
    end

    it "routes to #update" do
      expect(put: "/vaults/1").to route_to("vaults#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete: "/vaults/1").to route_to("vaults#destroy", :id => "1")
    end

  end
end
