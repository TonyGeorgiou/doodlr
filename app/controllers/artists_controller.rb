class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create

    artist = Artist.new artist_params

    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image transformation methods.
      artist.avatar = req["public_id"]
    end

    if artist.save
      session[:artist_id] = artist.id
      redirect_to artist
    else
      render  :edit
    end

  end

  def edit
    @artist = Artist.find params[:id]
    redirect_to root_path unless @current_artist.id == @artist.id
  end

  def update
    artist = Artist.find params[:id]
    redirect_to root_path unless @current_artist.id == artist.id

    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image transformation methods.
      artist.avatar = req["public_id"]
    end

    artist.update_attributes artist_params   # get the fields from the submitted form

    if artist.save
      redirect_to artist
    else
      render  :edit
    end

  end

  def show
    @artist = Artist.find params[:id]
    @doodles = Doodle.where :artist_id => params[:id]
  end

  def destroy
    artist = Artist.find params[:id]
    artist.destroy
    redirect_to artists_path
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :location, :dob, :email, :password, :password_confirmation, :blurb)
  end
end
