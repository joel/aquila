require "spec_helper"

describe GoldbricksController do
  describe "routing" do

    it "routes to #index" do
      get("http://subdomain.lvh.me/goldbricks").should route_to("goldbricks#index")
    end

    it "routes to #new" do
      get("http://subdomain.lvh.me/goldbricks/new").should route_to("goldbricks#new")
    end

    it "routes to #show" do
      get("http://subdomain.lvh.me/goldbricks/1").should route_to("goldbricks#show", :id => "1")
    end

    it "routes to #edit" do
      get("http://subdomain.lvh.me/goldbricks/1/edit").should route_to("goldbricks#edit", :id => "1")
    end

    it "routes to #create" do
      post("http://subdomain.lvh.me/goldbricks").should route_to("goldbricks#create")
    end

    it "routes to #update" do
      put("http://subdomain.lvh.me/goldbricks/1").should route_to("goldbricks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("http://subdomain.lvh.me/goldbricks/1").should route_to("goldbricks#destroy", :id => "1")
    end

  end
end
