Rails.application.routes.draw do
  
  namespace :api do
    get "/coaches" => "coaches#index"
    get "/coaches/:id" => "coaches#show"
  end
end
