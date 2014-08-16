require 'spec_helper'

describe "goldbricks/index" do
  before(:each) do
    assign(:goldbricks, [
      stub_model(Goldbrick,
        :name => "Name",
        :login => "Login"
      ),
      stub_model(Goldbrick,
        :name => "Name",
        :login => "Login"
      )
    ])
    allow(view).to receive(:current_vault).and_return(create(:vault))
  end

  it "renders a list of goldbricks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    # assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
  end
end
