class DoodlesController < ApplicationController
  def index
    @doodles = Doodle.all
  end

  def new
    @doodle = Doodle.new
  end

  def create
    # doodle = Doodle.create doodle_params
    doodle = @current_user.doodles.create doodle_params
    redirect_to doodle
  end

  def edit
    @doodle = Doodle.find params[:id]
  end

  def update
    doodle = Doodle.find params[:id]
    doodle.update doodle_params
    redirect_to doodle
  end

  def show
    @doodle = Doodle.find params[:id]
  end

  def destroy
    doodle = Doodle.find params[:id]
    doodle.destroy
    redirect_to doodles_path
  end

  private
  def doodle_params
    params.require(:doodle).permit(:title, :image_url, :caption)
  end

end
