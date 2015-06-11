class RestaurantsController < ApplicationController
  skip_before_filter :require_login, only: [:index]
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
	def index
		@restaurants = Restaurant.all
	end

	#Show data for one restaurant
	def show
		@restaurant = Restaurant.find(params[:id])
	end

	# Displays form for creating a new restaurant
	def new
		@restaurant = Restaurant.new
	end

	# Processes data from the new restaurant form and creates a restaurant
	def create
	    @restaurant = Restaurant.new(restaurant_params)

	    respond_to do |format|
	      if @restaurant.save
	        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
	        format.json { render :show, status: :created, location: @restaurant }
	      else
	        format.html { render :new }
	        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
	      end
	    end
	end

	# Displays form for editing an existing restaurant
	def edit

	end

	# Processes data from the edit restaurant from and updates the restaurant
	def update
	    respond_to do |format|
	      if @restaurant.update(restaurant_params)
	        format.html { redirect_to @restaurant, notice: 'restaurant was successfully updated.' }
	        format.json { render :show, status: :ok, location: @restaurant }
	      else
	        format.html { render :edit }
	        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
	      end
	    end
	end

	# Deletes the restaurant
	def destroy
		# Restaurant.find(params[:id]).destroy		
	    @restaurant.destroy
	    respond_to do |format|
	      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :spicy, :cost, :vegetarian)
    end
end