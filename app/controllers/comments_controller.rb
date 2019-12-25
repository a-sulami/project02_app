class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    param = comment_params.merge({ last_episode_id: params[:last_episode_id], user_id: current_user.id})
    @comment = Comment.new(param)
    # @comment.user = current_user
    puts true if @comment.save

    redirect_to  last_episode_path(LastEpisode.find(params[:last_episode_id]))
  end

  def edit

  end

  private 

  def comment_params
    params.require(:comment).permit(:content, :last_episode_id)
  end

 
    
end
