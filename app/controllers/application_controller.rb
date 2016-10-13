class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_user

  private
  def fetch_user
    if session[:artist_id].present?
      @current_artist = Artist.find_by :id => session[:artist_id]
    end
    session[:artist_id] = nil unless @current_artist.present?
  end

  def check_for_user
    redirect_to root_path unless @current_artist.present?
  end

end
