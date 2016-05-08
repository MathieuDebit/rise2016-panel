Rails.application.routes.draw do
  root to: "home#index"
  get 'home/index'

  Rails.application.routes.draw do
    devise_for :users, controllers: { sessions: 'users/sessions' }
    # get :users, to: 'users/sessions#index'
  end

  resources :participants
end
