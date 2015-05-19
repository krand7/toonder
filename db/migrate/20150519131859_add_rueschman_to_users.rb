class AddRueschmanToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rueschman, :boolean, null: false, default: false
  end
end
