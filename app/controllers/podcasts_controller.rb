class PodcastsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_podcast, only: [:show, :edit, :update, :destroy]

  def index
    @podcasts = Podcast.all
  end

  def show
    @podcast = Podcast.find(params[:id])
    # Your logic for the podcast show action goes here
  end

  def new
    @podcast = Podcast.new
  end

  def create
    @podcast = current_user.podcasts.new(podcast_params)
    @podcast.published_at = Time.zone.now

    if @podcast.save
      redirect_to @podcast, notice: 'Podcast was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if user_signed_in? && current_user == @podcast.user
      @podcast.destroy
      redirect_to podcasts_url, notice: 'Podcast was successfully destroyed.'
    else
      redirect_to root_path, alert: "You don't have permission to delete this podcast."
    end
  end

  def edit
    @podcast = Podcast.find(params[:id])
    unless current_user == @podcast.user
      redirect_to root_path, alert: "You don't have permission to edit this podcast."
    end
  end

  def update
    @podcast = Podcast.find(params[:id])
    if @podcast.update(podcast_params)
      redirect_to @podcast, notice: 'Podcast was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_podcast
    @podcast = Podcast.find(params[:id])
  end

  def podcast_params
    params.require(:podcast).permit(:title, :description, :published_at, :transcript, :image)
  end

end
