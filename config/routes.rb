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
  patch '/books/:book_id/user_episodes/:id/next' => 'user_episodes#next', as: 'next'
  patch '/books/:book_id/user_episodes/:id/previous' => 'user_episodes#previous', as: 'previous'

  resources :books, only: [:index, :show] do
    resources :episodes, only: [:show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
