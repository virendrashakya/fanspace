Rails.application.routes.draw do
  

  # resources :accounts
  
  root to: 'dashboard#index'
  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  devise_for :influencers, controllers: {
    sessions: 'influencers/sessions',
    registrations: 'influencers/registrations'
  }

  scope module: 'influencers' do
    resources :posts
    resource :profile, except: [:new, :create, :destroy]
    resources :social_accounts
  end

  scope module: 'users' do
    resources :relationships, only: [:create, :destroy]
  end
  # resource :account, except: :delete

  # resources :users do
  #   member do
  #     get :following, :followers
  #     resource :account
  #   end
  # end

  

  
end
