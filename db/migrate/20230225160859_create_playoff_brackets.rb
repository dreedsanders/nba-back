class CreatePlayoffBrackets < ActiveRecord::Migration[7.0]
  def change
    create_table :playoff_brackets do |t|
      t.integer :id
      t.integer :user_id

      t.timestamps
    end
  end
end
