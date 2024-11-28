Rails.application.routes.draw do
  # トップページ
  root to: 'homes#top'
  # 本のリスト
  get 'books' => 'books#index', as: 'index'
  #1冊の削除
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # 1冊表示
  get 'books/:id' => 'books#show', as: 'book'
  # 1冊編集ページ
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # 本の追加
  post 'books' => 'books#new'
  # 編集
  patch 'books/:id' => 'books#update'
end