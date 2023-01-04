class AddImageToEstablishments < ActiveRecord::Migration[7.0]
  def change
    add_column :establishments, :image, :string
  end
end
