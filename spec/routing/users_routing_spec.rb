require "spec_helper"

describe UsersController do
  describe "routing" do

    it "routes to #index" do
      expect(get: "http://subdomain.lvh.me/users").to route_to("users#index")
    end

    it "routes to #show" do
      expect(get: "http://subdomain.lvh.me/users/1").to route_to("users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(get: "http://subdomain.lvh.me/users/1/edit").to route_to("users#edit", :id => "1")
    end

    it "routes to #update" do
      expect(put: "http://subdomain.lvh.me/users/1").to route_to("users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(delete: "http://subdomain.lvh.me/users/1").to route_to("users#destroy", :id => "1")
    end

  end
end
