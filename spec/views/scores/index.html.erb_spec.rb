require 'spec_helper'

describe "scores/index" do
  before(:each) do
    assign(:scores, [
      stub_model(Score,
        :name => "Name",
        :score => 1,
        :game_id, => "Game Id,",
        :tkey => "Tkey"
      ),
      stub_model(Score,
        :name => "Name",
        :score => 1,
        :game_id, => "Game Id,",
        :tkey => "Tkey"
      )
    ])
  end

  it "renders a list of scores" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Game Id,".to_s, :count => 2
    assert_select "tr>td", :text => "Tkey".to_s, :count => 2
  end
end
