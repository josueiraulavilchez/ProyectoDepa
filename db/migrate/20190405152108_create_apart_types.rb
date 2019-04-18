class CreateApartTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :apart_types do |t|
      t.string :name
      t.decimal :area, precision: 8, scale: 2
      t.integer :floor

      t.timestamps
    end
  end
end
