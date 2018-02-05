class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :released_date
      t.references :actor, foreign_key: true
      t.references :director, foreign_key: true

      t.timestamps
    end
  end
end
