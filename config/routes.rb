Rails.application.routes.draw do
  resources :cocktails, only: [:new, :index, :create, :show, :create] do
    resources :doses, only:[:new, :index, :create,]
  end
  resources :doses, only: [:delete]
end

#resources :ingredients, only []