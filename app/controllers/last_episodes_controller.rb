class LastEpisodesController < ApplicationController
  before_action :authenticate_user!
  # before_action :check_id, only: [:index]
  
  def index
    @last_episodes = current_user.last_episodes
  end

  def new
    @last_episode = LastEpisode.new
  end

  def show
    @last_episode = LastEpisode.find(params[:id])
    @comment=Comment.new
 
  end

  def create
    @last_episode = LastEpisode.create(last_episode_params) 
    @last_episode.user_id = current_user.id
    @last_episode.save
    redirect_to @last_episode
  end

  def edit
    @last_episode = LastEpisode.find(params[:id])
  end

  def update
    @last_episode = LastEpisode.find(params[:id])
    @last_episode.update(params.require(:last_episode).permit(:episode_number, :name))
      
    redirect_to @last_episode
  end

  def destroy
    @last_episode = LastEpisode.find(params[:id]).destroy
    if @last_episode.present?
      @last_episode.destroy
    end
    redirect_to last_episodes
  end

  private

  def last_episode_params
    params.require(:last_episode).permit( :episode_number, :name, :comment_id)
    end

end
