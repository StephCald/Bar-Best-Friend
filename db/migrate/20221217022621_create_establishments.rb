class CreateEstablishments < ActiveRecord::Migration[7.0]
  def change
    create_table :establishments do |t|
      t.integer :rating
      t.string :address
      t.integer :phone
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
