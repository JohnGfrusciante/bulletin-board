Rails.application.routes.draw do
  devise_for :users
  root to: 'topics#index'

  resources :topics, only: [:index, :new, :create, :show] do
    resources :messages, except: [:show]
    collection do
      get 'search'
    end
  end

end
