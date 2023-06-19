class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    checkFertilizing
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to @plant 
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    if @plant.update(plant_params)
      redirect_to @plant 
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  # Increment Method
    # Increments the number of plants of a certain plant type 
  def increment
    @plant = Plant.find(params[:id])
    val = @plant.numPlants 
    val += 1
    @plant.update_attribute(:numPlants, val)
    # @plant.update_attribute(:numPlants)
  end

  # Decrement Method
    # Decrements the number of plants of a certain plant type 
  def decrement
    @plant = Plant.find(params[:id])
    val = @plant.numPlants
    val -= 1
    @plant.update_attribute(:numPlants, val)

    # @plant.decrement!(:numPlants)
  end
  
  def checkFertilizing
    @plant = Plant.find(params[:id])
    days = 14
    # If it's been more than 14 days since the plant was last fertilized, set needsFertilizer to true, otherwise false
    if (@plant.lastFertilized + days) < Date.today
      @plant.needsFertilizer = true
    else 
      @plant.needsFertilizer = false
    end
    puts "Needs Fertilizer: #{@plant.needsFertilizer}"
    @plant.save 
  end

    



  private
    def plant_params
      params.require(:plant).permit(:plantType, :plantDescription, :plantTips, :datePlanted, :needsFertilizer, :fertilizeDays, :lastFertilized, :numPlants)
    end
end
