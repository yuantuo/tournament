class AddColumeToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :email, :string
  end
end
