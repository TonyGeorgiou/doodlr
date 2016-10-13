class FollowsController < ApplicationController

  before_action :check_for_user, :only => [:create, :destroy]

  def create
    follow = Follow.create :follower_id => @current_artist.id, :followed_id => params[:id]
    flash[:message] = 'You are now following this doodler.'
    redirect_to artist_path( params[:id] )
  end

  def destroy
    follow = Follow.where(:follower_id => @current_artist.id, :followed_id => params[:id]).destroy_all
    redirect_to artist_path( params[:id] )
  end

  def index
  end

  def show
  end
end
