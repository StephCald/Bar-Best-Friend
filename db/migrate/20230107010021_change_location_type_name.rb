class ChangeLocationTypeName < ActiveRecord::Migration[7.0]
  def change
    rename_column :establishments, :type, :location_type
  end
end
