class CitiesController < ApplicationController
    def index
      @cities = City.all
      @cities = @cities.where(state_id: params[:state_id]) if params[:state_id].present?
      @cities = @cities.where('description LIKE ?', "%#{params[:description]}%") if params[:description].present?
    end
  end
  
