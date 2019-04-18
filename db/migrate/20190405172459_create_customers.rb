class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :dni
      t.string :mail
      t.string :phone
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
