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
    rendered.should match(/Name/)
    rendered.should match(/Login/)
    rendered.should match(/Password/)
    rendered.should match(/MyText/)
  end
end
