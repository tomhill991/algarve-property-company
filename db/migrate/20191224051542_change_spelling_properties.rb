class ChangeSpellingProperties < ActiveRecord::Migration[5.2]
  def change
    rename_table :proeprties, :properties
  end
end
