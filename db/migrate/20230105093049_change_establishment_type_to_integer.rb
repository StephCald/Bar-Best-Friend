class ChangeEstablishmentTypeToInteger < ActiveRecord::Migration[7.0]

  def change
    remove_column :establishments, :type, :string
    add_column :establishments, :type, :integer, default: 0
  end
end
