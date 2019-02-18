class CreateIslands < ActiveRecord::Migration[5.2]
  def change
    create_table :islands do |t|
      t.string :index
      t.string :new
      t.string :create

      t.timestamps
    end
  end
end
