class AddCoordinatesToEstablishments < ActiveRecord::Migration[7.0]
  def change
    add_column :establishments, :latitude, :float
    add_column :establishments, :longitude, :float
  end
end
