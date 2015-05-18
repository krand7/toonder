class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.boolean :deleted, null: false, default: false

      # Profile Photo
      t.string :photo

      t.timestamps null: false
    end

    add_index :characters, :user_id
  end
end
