class UsersController < ApplicationController

  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]




  def logged_in_user
      unless logged_in?
        redirect_to login_url
      end
  end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
    end



  def new
  	@user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user  #sing up then log in directly
    	flash[:success] = "Sign up success!!"
    	redirect_to user_url(@user)
      # Handle a successful save.
    else
      render 'new'
    end
  end


  def edit
    @user = User.find(params[:id])
  end

    def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      redirect_to @user
    else
      render 'edit'
    end
  end


  	private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end


end
