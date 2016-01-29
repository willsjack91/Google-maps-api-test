class CompaniesController < ApplicationController
  def index
  end

  def show
  	    @company = Company.find(2)
  	   

  	    @hash = Gmaps4rails.build_markers(@company) do |comp, marker|
  		marker.lat comp.lat
  		marker.lng comp.lng
  	end
  end

  def new
  end

  def edit
  end
end

 private

  def company_params
    params.require(:company).permit(:name, :lat, :lng)
  end
