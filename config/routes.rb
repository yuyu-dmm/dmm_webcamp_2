Rails.application.routes.draw do
  # トップページ
  get '' => 'homes#top', as: 'top_page'
  # 本のリスト
  get 'books' => 'homes#show_books', as: 'show_books'
  # 本の追加
  post 'books' => 'homes#create_book', as: 'create_book'
  #1冊の削除
  delete 'books/:id' => 'homes#destroy_book', as: 'destroy_book'
  # 1冊表示
  get 'books/:id' => 'homes#show_book', as: 'show_book'
  # 1冊編集ページ
  get 'books/:id/edit' => 'homes#edit_book', as: 'edit_book'
  # 編集
  patch 'books/:id' => 'homes#update_book', as: 'update_book'
end