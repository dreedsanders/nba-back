class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :photo
      t.integer :playoff_bracket_id

      t.timestamps
    end
  end
end
