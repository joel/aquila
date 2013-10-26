require 'spec_helper'

describe "goldbricks/new" do
  before(:each) do
    assign(:goldbrick, stub_model(Goldbrick,
      :name => "MyString",
      :link => "Link",
      :login => "MyString",
      :password => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new goldbrick form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", goldbricks_path, "post" do
      assert_select "input#goldbrick_name[name=?]", "goldbrick[name]"
      # assert_select "input#goldbrick_name[name=?]", "goldbrick[link]"
      assert_select "input#goldbrick_login[name=?]", "goldbrick[login]"
      assert_select "input#goldbrick_password[name=?]", "goldbrick[password]"
      assert_select "input#goldbrick_content[name=?]", "goldbrick[content]"
    end
  end
end
