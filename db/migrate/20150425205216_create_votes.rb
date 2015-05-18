class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :character_id
      t.integer :rating

      t.timestamps null: false
    end
  end
end
