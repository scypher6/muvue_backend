class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :updatedAt
      t.string :videoId
      t.string :img_url

      t.timestamps
    end
  end
end
