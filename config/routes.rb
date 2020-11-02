Rails.application.routes.draw do
  resources :activities
  resources :plans, only: :index do
    collection do
      get :create_plan
    end
  end

  devise_for :users
  root to: "home#index"
end
