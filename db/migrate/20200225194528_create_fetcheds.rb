class CreateFetcheds < ActiveRecord::Migration[6.0]
  def change
    create_table :fetcheds do |t|
      t.references :genre, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
