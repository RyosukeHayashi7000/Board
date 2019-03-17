class AddUserBoardIdToFavorite < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :user_id, :integer
    add_column :favorites, :board_id, :integer
  end
end
