class BoardsController < ApplicationController
  before_action :set_target_board, only: %i[show edit update destroy]
  
  def index
    @boards = Board.all.order(created_at: :desc).page(params[:page]).per(5)
  end

  def new
    @board = Board.new(flash[:board])
  end

  def create
    board = Board.new(board_params)
    if board.save
      flash[:notice] = "「#{board.title}」の情報を投稿しました"
      redirect_to board
    else
      redirect_to new_board_path, flash: {
          board: board,
          error_messages: board.errors.full_messages
      }
    end 
  end

  def show
  end
  
  def edit
  end  

  def update
    @board.update(board_params)
    redirect_to @board, flash: {notice: "情報を更新しました"}
  end 
  
  def destroy
    @board.destroy
    redirect_to boards_path, flash: {notice: "「ID番号#{@board.id}の投稿が削除されました」"}
  end  
  
  private
  def board_params
    params.require(:board).permit(:name, :title, :body, :image, :address, :mail, :comment, tag_ids: [])
  end 
  
  def set_target_board
    @board = Board.find_by(id: params[:id])
  end  
end

