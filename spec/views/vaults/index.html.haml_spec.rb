require 'spec_helper'

describe "vaults/index" do
  before(:each) do
    assign(:vaults, [
      stub_model(Vault,
        :title => "Title",
        :subdomain => "Subdomain"
      ),
      stub_model(Vault,
        :title => "Title",
        :subdomain => "Subdomain"
      )
    ])
  end

  it "renders a list of vaults" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Subdomain".to_s, :count => 2
  end
end
