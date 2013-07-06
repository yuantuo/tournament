require 'spec_helper'

describe "tournaments/new" do
  before(:each) do
    assign(:tournament, stub_model(Tournament,
      :name => "MyString",
      :desc => "MyString",
      :tkey => "MyString"
    ).as_new_record)
  end

  it "renders new tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tournaments_path, :method => "post" do
      assert_select "input#tournament_name", :name => "tournament[name]"
      assert_select "input#tournament_desc", :name => "tournament[desc]"
      assert_select "input#tournament_tkey", :name => "tournament[tkey]"
    end
  end
end
