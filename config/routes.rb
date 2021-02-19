Rails.application.routes.draw do
  get 'dose/new'
  get 'dose/create'
  resources :cocktails, only: [:index, :create, :show, :create] do
    resources :doses, only:[:new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
end

#resources :ingredients, only []