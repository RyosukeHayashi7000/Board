class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(board_params)
    redirect_to('/boards')
  end
  
  private
  def board_params
    params.require(:board).permit(:name, :title, :body, :image, :address, :mail)
  end  
end

