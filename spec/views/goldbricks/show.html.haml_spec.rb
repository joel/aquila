require 'spec_helper'

describe "goldbricks/show", pending: true do
  before(:each) do
    @goldbrick = assign(:goldbrick, stub_model(Goldbrick,
      :name => "Name",
      :login => "Login",
      :password => "Password",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Login/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/MyText/)
  end
end
