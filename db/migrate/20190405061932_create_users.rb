class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :dni
      t.string :name
      t.string :surname
      t.string :profile

      t.timestamps
    end
  end
end
