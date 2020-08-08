class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def create
    user = User.new(
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation],
                    date_of_birth: params[:date_of_birth],
                    goal: params[:goal],
                    goal_weight: params[:goal_weight],
                    height: params[:height],
                    weight: params[:weight],
                    weekly_goal: params[:weekly_goal],
                    activity: params[:activity]
                    )
    if user.save
      render json: {message: "User saved successfully."}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user = User.find(params[:id])

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
    @user.date_of_birth = params[:date_of_birth] || @user.date_of_birth
    @user.goal = params[:goal] || @user.goal
    @user.goal_weight = params[:goal_weight] || @user.goal_weight
    @user.height = params[:height] || @user.height
    @user.weight = params[:weight] || @user.weight
    @user.weekly_goal = params[:weekly_goal] || @user.weekly_goal
    @user.activity = params[:activity] || @user.activity
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "Successfully destroyed user"}
  end
end
