class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :desc
      t.string :tkey

      t.timestamps
    end
  end
end
