class IdeasController < ApplicationController

  def show
    @user = User.find(params[:user_id])
  end

  def new
    @user = User.find(params[:user_id])
    @idea = Idea.new
  end

  def create
    @user = User.find(params[:user_id])
    @idea = @user.ideas.create(idea_params)
    if @idea.save
      redirect_to user_ideas_path(@user)
    else
      render :new
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description)
  end
end
