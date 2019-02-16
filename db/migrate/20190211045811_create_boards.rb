class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :name
      t.string :title
      t.text :comment
      t.string :image
      t.string :address
      t.string :mail

      
      t.timestamps
    end
  end
end
