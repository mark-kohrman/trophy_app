Rails.application.routes.draw do
  namespace :api do
    get "/trophies" => "trophies#index"
    get "/trophies/:id" => "trophies#show"
    post "/trophies" => "trophies#create"
    patch "/trophies/:id" => "trophies#update"
    delete "/trophies/:id" => "trophies#destroy "
  end
end
