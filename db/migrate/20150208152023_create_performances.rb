class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.datetime :datetime
      t.decimal :budget
      t.references :play, index: true
      t.timestamps
    end
  end
end
