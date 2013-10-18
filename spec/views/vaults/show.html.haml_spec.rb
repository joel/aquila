require 'spec_helper'

describe "vaults/show" do
  before(:each) do
    @vault = assign(:vault, stub_model(Vault,
      :name => "Title",
      :subdomain => "Subdomain"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Subdomain/)
  end
end
