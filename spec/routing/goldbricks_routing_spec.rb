require "spec_helper"

describe GoldbricksController do
  describe "routing" do

    it "routes to #index" do
      expect(get: "http://subdomain.lvh.me/goldbricks").to route_to("goldbricks#index")
    end

    it "routes to #new" do
      expect(get: "http://subdomain.lvh.me/goldbricks/new").to route_to("goldbricks#new")
    end

    it "routes to #show" do
      expect(get: "http://subdomain.lvh.me/goldbricks/1").to route_to("goldbricks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get: "http://subdomain.lvh.me/goldbricks/1/edit").to route_to("goldbricks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(post: "http://subdomain.lvh.me/goldbricks").to route_to("goldbricks#create")
    end

    it "routes to #update" do
      expect(put: "http://subdomain.lvh.me/goldbricks/1").to route_to("goldbricks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete: "http://subdomain.lvh.me/goldbricks/1").to route_to("goldbricks#destroy", :id => "1")
    end

  end
end
