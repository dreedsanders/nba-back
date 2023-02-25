class CreatePlayoffBrackets < ActiveRecord::Migration[7.0]
  def change
    create_table :playoff_brackets do |t|
      t.integer :user_id
      t.text :teams, array: true, default: []

      t.timestamps
    end
  end
end
