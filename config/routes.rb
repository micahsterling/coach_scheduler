Rails.application.routes.draw do
  root to: 'coaches#index'
  namespace :api do
    get "/coaches" => "coaches#index"
    get "/coaches/:id" => "coaches#show"
  end
end
