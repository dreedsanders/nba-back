class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :team_id
      t.integer :number
      t.string :position

      t.timestamps
    end
  end
end
