Rails.application.routes.draw do
  namespace :api do
    get "/trophies" => "trophies#index"
  end
end
