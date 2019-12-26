class AddAgencyToHouses < ActiveRecord::Migration[5.2]
  def change
    add_reference :houses, :agency, foreign_key: true
  end
end
