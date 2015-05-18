class AddFactsToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :fact1, :string
    add_column :characters, :fact1_description, :string
    add_column :characters, :fact2, :string
    add_column :characters, :fact2_description, :string
    add_column :characters, :fact3, :string
    add_column :characters, :fact3_description, :string
  end
end
