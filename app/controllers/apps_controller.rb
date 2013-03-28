class AppsController < ApplicationController

  respond_to :html, :js, :xml

  def index
    @apps = App.all
  end
  def new

    @app = App.new
  end
  def show
    @app = App.find(params[:id])
  end
  def create
    @user = User.find(params[:app][:user_id])
#    @user = User.new(params[:user])
    @app = @user.apps.create(params[:app])
    #@app = App.new(params[:app])
    if @app.save
      redirect_to @app
    else
      render 'new'
    end
  end
  def destroy
    @app = App.find(params[:id])
    @app.destroy
    respond_with(@app)
  end
end
