class AddPicturesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pictures, :string
  end
end
