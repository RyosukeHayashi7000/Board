class UsersController < ApplicationController
  def new
    @user = User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to mypage_path, flash: {notice: "ユーザー登録しました"}
    else
      redirect_back(fallback_location: root_path, flash: {
        user: user,
        error_messages: user.errors.full_messages
      })
    end    
  end

  def me
    @user = User.find_by(id:@current_user.id)
    @boards = Board.where(user_id:@user.id)
    @boards = @boards.order(created_at: :desc).page(params[:page]).per(5)
    
  end

  def show
    @user = User.find_by(id:params[:id])
    @boards = Board.where(user_id:params[:id])
    @boards = @boards.order(created_at: :desc).page(params[:page]).per(5)
  end  

  def likes
    @favorites = Favorite.where(user_id: @current_user.id)
    @favorites = @favorites.order(created_at: :desc).page(params[:page]).per(5)
  end
  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end    
