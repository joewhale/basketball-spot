class AddFieldsToPlacesTable < ActiveRecord::Migration
  def change
    add_column :places, :restroom, :string
    add_column :places, :water, :string
    add_column :places, :parking, :string
  end
end
