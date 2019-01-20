Rails.application.routes.draw do
  resources :products, only: [:index, :show] do
    member do
      post 'buy'
    end
  end
end
