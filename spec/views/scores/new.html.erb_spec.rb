require 'spec_helper'

describe "scores/new" do
  before(:each) do
    assign(:score, stub_model(Score,
      :name => "MyString",
      :score => 1,
      :game_id, => "MyString",
      :tkey => "MyString"
    ).as_new_record)
  end

  it "renders new score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scores_path, :method => "post" do
      assert_select "input#score_name", :name => "score[name]"
      assert_select "input#score_score", :name => "score[score]"
      assert_select "input#score_game_id,", :name => "score[game_id,]"
      assert_select "input#score_tkey", :name => "score[tkey]"
    end
  end
end
