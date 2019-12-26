class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :contact_name
      t.string :telephone_number
      t.string :email_address
      t.string :name

      t.timestamps
    end
  end
end
