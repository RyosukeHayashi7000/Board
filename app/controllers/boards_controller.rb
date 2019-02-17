class BoardsController < ApplicationController
  before_action :set_target_board, only: %i[show edit update destroy]
  
  def index
    @boards = Board.all.order(created_at: :desc).page(params[:page]).per(5)
  end

  def new
    @board = Board.new
  end

  def create
    board = Board.create(board_params)
    redirect_to board
  end

  def show
  end
  
  def edit
  end  

  def update
    @board.update(board_params)
    redirect_to @board
  end 
  
  def destroy
    @board.delete
    redirect_to boards_path
  end  
  
  private
  def board_params
    params.require(:board).permit(:name, :title, :body, :image, :address, :mail, :comment)
  end 
  
  def set_target_board
    @board = Board.find_by(id: params[:id])
  end  
end

