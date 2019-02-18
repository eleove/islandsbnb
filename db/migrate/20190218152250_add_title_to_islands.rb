class AddTitleToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :title, :string
  end
end
