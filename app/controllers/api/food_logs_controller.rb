class Api::FoodLogsController < ApplicationController
  def index
    @food_logs = FoodLog.all
    render 'index.json.jbuilder'
  end

  def create
    @food_log = FoodLog.new(
                              food_type: params[:food_type],
                              food: params[:food],
                              calories: params[:calories],
                              quantity: params[:quantity],
                              workout: params[:workout],
                              water_intake: params[:water_intake]
                            )
    if @food_log.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @food_log.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @food_log = FoodLog.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @food_log = FoodLog.find(params[:id])

    @food_log.food_type = params[:food_type] || @food_log.food_type
    @food_log.food = params[:food] || @food_log.food
    @food_log.calories = params[:calories] || @food_log.calories
    @food_log.quantity = params[:quantity] || @food_log.quantity
    @food_log.workout = params[:workout] || @food_log.workout
    @food_log.water_intake = params[:water_intake] || @food_log.water_intake

    if @food_log.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @food_log.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    food_log = FoodLog.find(params[:id])
    food_log.destroy
    render json: {message: 'Successfully Destroyed Food Log.'}
  end
end
