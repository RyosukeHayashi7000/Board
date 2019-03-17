class FavoritesController < ApplicationController
    def create
        user = @current_user
        board = Board.find_by(id:params[:id])
        favorite = Favorite.new(user_id: user.id, board_id: board.id)
        if favorite.save
            redirect_to board_path(board.id)
        else 
            redirect_to board_path(board.id)
        end    
    end

    def destroy
        board = Board.find_by(id:params[:id])
        favorite = Favorite.find_by(board_id: params[:id])
        if favorite.destroy
            redirect_to board_path(board.id)
        else 
            redirect_to board_path(board.id)    
        end    
    end
end        