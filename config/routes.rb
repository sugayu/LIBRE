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

  #タイトル表示・非表示URL
  patch '/books/:book_id/episodes/:id/change_title_show_flg' => 'users#change_title_show_flg', as: 'change_title_show_flg'

  #プログレスバー表示・非表示URL
  patch '/books/:book_id/episodes/:id/change_progress_bar_show_flg' => 'users#change_progress_bar_show_flg', as: 'change_progress_bar_show_flg'


  #マイワードURL
  #HTTPメソッドがgetではなくpostが本来は正しいがAjaxでactionを呼ぶときにgetじゃないとエラーになってしまうためgetを使っている
  get '/mywords/create' => 'mywords#create', as: 'create_mywords'

  #辞書履歴作成URL
  #HTTPメソッドがgetではなくpostが本来は正しいがAjaxでactionを呼ぶときにgetじゃないとエラーになってしまうためgetを使っている
  get '/dictionary_records/create' => 'dictionary_records#create', as: 'create_dictionary_records'

  #マイページURL
  get '/mypage' => 'users#show', as: 'mypage'

  #マイブックURL
  get '/users/:id/mybook' => 'users#mybook', as: 'mybook'

  #エピソードプレビューURL
  get '/books/:book_id/episodes/preview' => 'previews#episode', as: 'preview'
  get '/episodes/preview/next' => 'previews#next_preview', as: 'next_preview'
  get '/episodes/preview/previous' => 'previews#previous_preview', as: 'previous_preview'

  #検索ページURL
  get '/search' => 'searches#search', as: 'search'
  #本検索URL
  get '/search_book' => 'results#search_book', as: 'search_book'
  #本検索URL
  get '/search_user' => 'results#search_user', as: 'search_user'


  resources :books, only: [:index, :show, :new, :create, :edit, :destroy] do
    resources :episodes, only: [:show, :new, :create, :edit, :update, :destroy] do
      resources :likes, only: [:create, :destroy]
    end
  end

  resources :users, only: [:edit, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
