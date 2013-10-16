require 'spec_helper'

describe "vaults/new" do
  before(:each) do
    assign(:vault, stub_model(Vault,
      :title => "MyString",
      :subdomain => "MyString"
    ).as_new_record)
  end

  it "renders new vault form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vaults_path, "post" do
      assert_select "input#vault_title[name=?]", "vault[title]"
      assert_select "input#vault_subdomain[name=?]", "vault[subdomain]"
    end
  end
end
