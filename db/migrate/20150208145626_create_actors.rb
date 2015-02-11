class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.float :experence

      t.timestamps
    end
  end
end
