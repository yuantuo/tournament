require 'spec_helper'

describe "tournaments/edit" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :name => "MyString",
      :desc => "MyString",
      :tkey => "MyString"
    ))
  end

  it "renders the edit tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tournaments_path(@tournament), :method => "post" do
      assert_select "input#tournament_name", :name => "tournament[name]"
      assert_select "input#tournament_desc", :name => "tournament[desc]"
      assert_select "input#tournament_tkey", :name => "tournament[tkey]"
    end
  end
end
