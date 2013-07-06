class Score < ActiveRecord::Base
  
  belongs_to :game
  
  attr_accessible :game_id, :name, :score, :tkey
end
