class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new
  	@user.first_name = params[:user][:first_name]
  	@user.last_name = params[:user][:last_name]
  	@user.role		= params[:user][:role]
  	@user.image		= params[:user][:image]
    @user.email   = params[:user][:email]
  	if @user.save
  		flash[:notice] = "User has been added"
  		redirect_to new_user_path
  	else
  		render :new
  	end
  end

  def index
   @users = User.page(params[:page]).per(1)
  end

  def edit
  end

  def update
  end
end
