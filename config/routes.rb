Rails.application.routes.draw do
  namespace :v1 do
    resources :pets, only: [:index, :create, :show]
  end
end
