class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :title

      t.timestamps
    end

    create_table :actors_movies do |t|
      t.belongs_to :actor, index: true
      t.belongs_to :movie, index: true

    end
  end
end
