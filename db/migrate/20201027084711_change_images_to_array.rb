class ChangeImagesToArray < ActiveRecord::Migration[5.2]
  def change
    change_column :properties, :images, :string, array: true, default: [], using: "(string_to_array(images, ','))"

  end
end
