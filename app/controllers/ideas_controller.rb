class IdeasController < ApplicationController
  before_action :must_be_current_user

  def index
    @user = User.find(params[:user_id])
    @ideas = @user.ideas
  end

  def show
    @user = User.find(params[:user_id])
    @idea = @user.ideas.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @idea = Idea.new
    @images = Image.all
  end

  def create
    # require "pry"; binding.pry
    @user = User.find(params[:user_id])
    @idea = @user.ideas.create(idea_params)
    IdeaImage.create(idea_id: @idea.id, image_id: params[:image_ids].first)
    if current_user
      @idea.save
      redirect_to user_ideas_path(@user)
    else
      render :new
    end
  end

  def edit
    @categories = Category.all
    @idea = Idea.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @idea = @user.ideas.find(params[:id])
    @idea.update(idea_params)
    if @idea.save
      redirect_to user_idea_path(@idea.user, @idea)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    Idea.destroy(params[:id])

    redirect_to user_ideas_path(@user)
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description, :category_id, :id)
  end

  def must_be_current_user
    if current_user && current_user != User.find(params[:user_id])
      render file: "/public/404"
    end
  end
end
