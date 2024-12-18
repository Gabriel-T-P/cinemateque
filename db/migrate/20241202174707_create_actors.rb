class CreateActors < ActiveRecord::Migration[8.0]
  def change
    create_table :actors do |t|
      t.string :name,         null: false
      t.date :birth_date,     null: false
      t.string :nationality,  null: false

      t.timestamps
    end
  end
end
