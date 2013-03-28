class UsersController < ApplicationController

  protect_from_forgery
  #before_filter :signed_in_user, only: [:edit, :update]
  #
  #private
  #def signed_in_user
  #  redirect_to signin_path, notice: "Please sign in." unless signed_in?
  #end

  def new
    @user=User.new
  end
  def show
    @user=User.find(params[:id])
  end
  def create
    @user= User.new(params[:user])
    if @user.save
         redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  #def push
  #  @user = User.find(params[:id])
  #end

end
