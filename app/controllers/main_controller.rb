class MainController < ApplicationController
  def index
  	@categories = Category.all
    @last_category = Category.last
  	@places = Place.where(approved: true).paginate(:page => params[:page], :per_page => 20)

  end

  def show
  	@place = Place.find(params[:id])
  end

  def selected_category
  	@places = Place.where(category_id: params[:id]).paginate(page:params[:page], :per_page => 20)
    @category = Category.find(params[:id])
    respond_to do |format|
      format.js {}
    end
  end

end
