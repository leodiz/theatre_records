class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.decimal :sum
      t.date :date
      t.references :role
      t.references :performance
      t.references :actor

      t.timestamps
    end
  end
end
