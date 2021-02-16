class CreateUsersposts < ActiveRecord::Migration[6.1]
  def change
    create_table :usersposts do |t|
      t.string :name
      t.string :company
      t.string :station
      t.string :prefuctures
      t.string :address
      t.string :industry
      t.string :floor
      t.string :area
      t.string :rent
      t.string :common
      t.string :deposit
      t.string :features

      t.timestamps
    end
  end
end
