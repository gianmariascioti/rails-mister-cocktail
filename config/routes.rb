Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:new, :show, :create] do
    resources :doses, only: [:create, :new,]
  end
  resources :doses, only: :destroy
end
