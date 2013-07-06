require 'spec_helper'

describe "scores/show" do
  before(:each) do
    @score = assign(:score, stub_model(Score,
      :name => "Name",
      :score => 1,
      :game_id, => "Game Id,",
      :tkey => "Tkey"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Game Id,/)
    rendered.should match(/Tkey/)
  end
end
