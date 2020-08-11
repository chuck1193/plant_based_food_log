Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/food_logs" => "food_logs#index"
    post "/food_logs" => "food_logs#create"
    get "/food_logs/:id" => "food_logs#show"
    patch "/food_logs/:id" => "food_logs#update"
    delete "/food_logs/:id" => "food_logs#destroy"

    get "/recipes" => "recipes#index"
    post "/recipes" => "recipes#create"
    get "/recipes/:id" => "recipes#show"
    patch "/recipes/:id" => "recipes#update"
    delete "/recipes/:id" => "recipes#destroy"
  end
end
