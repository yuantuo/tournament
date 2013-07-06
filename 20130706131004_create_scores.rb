class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :name,
      t.integer :score,
      t.string :game_id,
      t.string :tkey,

      t.timestamps
    end
  end
end
