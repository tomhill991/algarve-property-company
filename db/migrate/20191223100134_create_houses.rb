class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :location
      t.integer :price
      t.string :images
      t.string :description
      t.boolean :garden
      t.string :type_of_property
      t.string :no_of_bedrooms
      t.string :no_of_bathrooms

      t.timestamps
    end
  end
end
