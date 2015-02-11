class CreateTableActorsAwards < ActiveRecord::Migration
  def change
    create_table :actors_awards do |t|
      t.integer :actor_id
      t.integer :award_id
    end
  end
end
