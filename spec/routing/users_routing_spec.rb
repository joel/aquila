require "spec_helper"

describe UsersController do
  describe "routing" do

    it "routes to #index" do
      get("http://subdomain.lvh.me/users").should route_to("users#index")
    end

    it "routes to #show" do
      get("http://subdomain.lvh.me/users/1").should route_to("users#show", :id => "1")
    end

    it "routes to #edit" do
      get("http://subdomain.lvh.me/users/1/edit").should route_to("users#edit", :id => "1")
    end

    it "routes to #update" do
      put("http://subdomain.lvh.me/users/1").should route_to("users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("http://subdomain.lvh.me/users/1").should route_to("users#destroy", :id => "1")
    end

  end
end
