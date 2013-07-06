require 'spec_helper'

describe "tournaments/index" do
  before(:each) do
    assign(:tournaments, [
      stub_model(Tournament,
        :name => "Name",
        :desc => "Desc",
        :tkey => "Tkey"
      ),
      stub_model(Tournament,
        :name => "Name",
        :desc => "Desc",
        :tkey => "Tkey"
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => "Tkey".to_s, :count => 2
  end
end
