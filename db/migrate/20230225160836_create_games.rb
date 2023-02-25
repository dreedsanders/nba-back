class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :home_team
      t.integer :away_team
      t.string :final_score

      t.timestamps
    end
  end
end
