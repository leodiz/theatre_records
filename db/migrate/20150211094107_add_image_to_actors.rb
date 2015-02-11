class AddImageToActors < ActiveRecord::Migration
  def change
    add_column :actors, :image, :string
  end
end
