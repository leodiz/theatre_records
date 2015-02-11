class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :title
      t.string :description
      t.string :author
      t.integer :year_of_foundation

      t.timestamps
    end
  end
end
