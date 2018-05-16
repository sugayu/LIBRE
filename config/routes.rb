Rails.application.routes.draw do
  ###########Adminルーティング###########
  devise_for :admins, only: [:sign_in, :sign_out, :session],
  :controllers => {
    :sessions => 'admins/sessions'
  }
  get '/admins/' => 'admins#top', as: 'admins_top'

  ###########Userルーティング###########
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }

  get '/' => 'users#top', as: 'top'

  resources :books, only: [:index, :show]
  resources :episodes, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
