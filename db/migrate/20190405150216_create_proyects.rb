class CreateProyects < ActiveRecord::Migration[5.1]
  def change
    create_table :proyects do |t|
      t.string :name
      t.string :district
      t.string :address
      t.decimal :m2price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
