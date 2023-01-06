class ChangePhoneToStringInEstablishments < ActiveRecord::Migration[7.0]
  def change
    change_column :establishments, :phone, :string
  end
end
