class ChangeHousesToProperties < ActiveRecord::Migration[5.2]
  def change
    rename_table :houses, :proeprties
  end
end
