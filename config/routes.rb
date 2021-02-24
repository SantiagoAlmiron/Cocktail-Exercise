Rails.application.routes.draw do
  get 'dose/new'
  get 'dose/create'
  root to: "cocktails#index"
  resources :cocktails, only: [:create, :show] do
    resources :doses, only:[:new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
end

#resources :ingredients, only []