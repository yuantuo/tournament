class AddNewColumeIpToGame < ActiveRecord::Migration
  def change
    add_column :games, :ip_, :string
  end
end
