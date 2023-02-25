class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :away_team
      t.string :final_score

      t.timestamps
    end
  end
end
