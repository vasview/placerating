class MainController < ApplicationController
  def index
  	@categories = Category.all
  	@places = Place.paginate(:page => params[:page], :per_page => 20)

  end

  def show
  	@place = Place.find(params[:id])
  end

  def categories
  	@places = Place.where(category_id: params[:id]).paginate(page:params[:page])
  end

end
