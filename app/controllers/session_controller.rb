class SessionController < ApplicationController

  def new
  end


  def create
    artist = Artist.find_by :email => params[:email]
    if artist.present? && artist.authenticate(params[:password])
      session[:artist_id] = artist.id
      redirect_to root_path
    else
      flash[:message] = 'Invalid username or password. Please try again.'
      redirect_to login_path
    end
  end


  def destroy
    session[:artist_id] = nil
    redirect_to root_path
  end
end
