class IdeasController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @ideas = @user.ideas
  end

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

  def edit
    @user = User.find(params[:user_id])
    @categories = Category.all
  end

  def update
    @idea = Idea.find(params[:id])
    @idea.update(idea_params)
    if @idea.save
      redirect_to user_idea_path(@idea.user)
    else
      render :edit
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description, :category_id, :id)
  end
end
