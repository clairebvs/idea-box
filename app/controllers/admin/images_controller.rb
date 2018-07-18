class Admin::ImagesController < Admin::BaseController

  def new
    @image = Image.new
  end

  def create
  end 

end
