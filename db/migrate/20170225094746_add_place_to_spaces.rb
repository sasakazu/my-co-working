class AddPlaceToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :place, :string
  end
end
