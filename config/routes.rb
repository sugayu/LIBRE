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

  #次の話や前に話に遷移するためのURL
  get '/books/:book_id/user_episodes/:id/next_episode' => 'episodes#next_episode', as: 'next_episode'
  get '/books/:book_id/user_episodes/:id/previous_episode' => 'episodes#previous_episode', as: 'previous_episode'

  #ページ切り替え時のURL
  patch '/books/:book_id/user_episodes/:id/next' => 'user_episodes#next', as: 'next'
  patch '/books/:book_id/user_episodes/:id/previous' => 'user_episodes#previous', as: 'previous'
  
  #テーマ変更URL
  patch '/books/:book_id/episodes/:id/change/theme' => 'users#change_theme', as: 'change_theme'

  #マイワードURL
  #HTTPメソッドがgetではなくpostが本来は正しいがAjaxでactionを呼ぶときにgetじゃないとエラーになってしまうためgetを使っている
  get '/mywords/create' => 'mywords#create', as: 'create_mywords'

  resources :books, only: [:index, :show] do
    resources :episodes, only: [:show] do
      resources :likes, only: [:create, :destroy]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
