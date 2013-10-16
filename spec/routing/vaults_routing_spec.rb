require "spec_helper"

describe VaultsController do
  describe "routing" do

    it "routes to #index" do
      get("/vaults").should route_to("vaults#index")
    end

    it "routes to #new" do
      get("/vaults/new").should route_to("vaults#new")
    end

    it "routes to #show" do
      get("/vaults/1").should route_to("vaults#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vaults/1/edit").should route_to("vaults#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vaults").should route_to("vaults#create")
    end

    it "routes to #update" do
      put("/vaults/1").should route_to("vaults#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vaults/1").should route_to("vaults#destroy", :id => "1")
    end

  end
end
