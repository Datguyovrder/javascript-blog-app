Rails.application.routes.draw do
  namespace :api do
    get "/posts" => 'posts#index'
    post "/posts" => 'posts#create'
    get "/posts/:id" => 'posts#show'
  end
end
