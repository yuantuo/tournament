class Game < ActiveRecord::Base
  
  has_many :scores
  attr_accessible :tkey, :ip_
end
