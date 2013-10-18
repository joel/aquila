require 'spec_helper'

describe "vaults/edit" do
  before(:each) do
    @vault = assign(:vault, stub_model(Vault,
      :name => "MyString",
      :subdomain => "MyString"
    ))
  end

  it "renders the edit vault form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vault_path(@vault), "post" do
      assert_select "input#vault_name[name=?]", "vault[name]"
      assert_select "input#vault_subdomain[name=?]", "vault[subdomain]"
    end
  end
end
