class Removewrongcolumnsislandsandaddrightones < ActiveRecord::Migration[5.2]
  def change
    remove_column :islands, :index
    remove_column :islands, :new
    remove_column :islands, :create
    add_column :islands, :description, :text
    add_column :islands, :price_per_night, :integer
  end
end


#  user_id
