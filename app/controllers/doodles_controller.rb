class DoodlesController < ApplicationController
  def index
    @doodles = Doodle.all   #TODO: .where( :public => true )
  end

  def new
    @doodle = Doodle.new
  end

  def create
    doodle = @current_artist.doodles.create doodle_params
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image transformation methods.
      doodle.image_url = req["public_id"]
      if doodle.save
        redirect_to doodle
      else
        render :new
      end
    end
  end

  def edit
    @doodle = Doodle.find params[:id]
    redirect_to doodles_path unless @current_artist.id == @doodle.artist_id
  end

  def update
    doodle = Doodle.find params[:id]
    redirect_to doodles_path unless @current_artist.id == doodle.artist_id
    doodle.update doodle_params
    redirect_to doodle
  end

  def show
    @doodle = Doodle.find params[:id]
  end

  def destroy
    doodle = Doodle.find params[:id]
    redirect_to doodles_path unless @current_artist.id == doodle.artist_id
    doodle.destroy
    redirect_to doodles_path
  end

  private
  def doodle_params
    params.require(:doodle).permit(:title, :caption)
  end

end
