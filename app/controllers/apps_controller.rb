class AppsController < ApplicationController

  respond_to :html, :js, :xml

  def index
   # @user = User.find(params[:user_id])
   # @apps = @user.apps.all
   ##@app = App.all
      end

  def show
    @user = User.find(params[:user_id])
    @app = @user.apps.find(params[:id])
#    @app = current_user.apps.find(param[:id])
  end

  def new
    #@app = App.new
    @user = User.find(params[:user_id])
    @app = App.new
  end
  def create
    #@app = current_user.App.new([params[:app]])
    @user = User.find(params[:user_id])
    @app = @user.apps.build(params[:app])

#    @app = @user.apps.create(params[:app])

    if @app.save
      #respond_with @app
      #redirect_to(user_app_path[@user,@app])
      redirect_to user_path(@user,@app)
      #redirect_to @app
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @app = @user.apps.find(params[:id])
  end


  def destroy
    @user = User.find(params[:user_id])
    @app = @user.apps.find(params[:id])
    @app.destroy
        redirect_to user_path(@user,@app)
  end
end
