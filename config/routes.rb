Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about'=>'homes#about',as:"about"

  #get 'post_images/new'
  #get 'post_images/index'
  #get 'post_images/show'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites,only:[:create,:destroy]
    resources :post_comments, only: [:create,:destroy]
  end
  #コメントは投稿画像に対してコメントされるためpost_commentsはpost_imagesに結びつく

  #get 'users/show'
  #get 'users/edit'
  resources:users,only:[:show,:edit,:update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
