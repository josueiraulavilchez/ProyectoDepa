class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :name
      t.string :surname
      t.string :mail
      t.string :phone
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
