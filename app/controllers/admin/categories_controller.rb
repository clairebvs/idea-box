class Admin::CategoriesController < Admin::BaseController
  before_action :require_admin

  def index
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
