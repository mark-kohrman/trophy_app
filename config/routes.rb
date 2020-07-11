Rails.application.routes.draw do
  namespace :api do
    get "/trophies" => "trophies#index"
    get "/trophies/:id" => "trophies#show"
  end
end
