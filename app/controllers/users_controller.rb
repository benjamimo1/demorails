class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create, :user_params]
  before_action :already_login, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @playlists = @user.playlists
    @songs = @user.songs
    @albums = @user.albums
    @artists = @user.artists
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Thank you for signing up!'
      MailerMailer.new_sign_up(@user).deliver
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user, notice: 'User updated!'
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :image_url, :email, :description, :password, :password_confirmation)
    end
end
