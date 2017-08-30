Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  resources :teachers
  resource :pages, only: [] do
    member do
      get :about
      get :contact
      get :policy
      get :calendar
      get :download_policy
      get :download_calendar
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
