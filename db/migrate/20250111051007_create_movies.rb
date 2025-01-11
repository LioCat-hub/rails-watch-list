class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.float :rating
      t.timestamps
    end

    create_table :lists do |t|
      t.string :name, null: false, unique: true
    end

    create_table :bookmarks do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.string :comment, null: false
    end
  end
end
