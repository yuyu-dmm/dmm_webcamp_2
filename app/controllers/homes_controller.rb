class HomesController < ApplicationController
  # トップページ
  def top
  end
  # すべて見る
  def show_books
    @books = Book.all
    @book = Book.new
  end
  # 追加
  def create_book
    @book = Book.new(list_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to show_book_path(@book.id)
    else
      @books = Book.all
      render :show_books
    end
  end
  # 消す
  def destroy_book
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to show_books_path
  end
  # 1冊見る
  def show_book
    @book = Book.find(params[:id])
  end
  # 編集
  def edit_book
    @book = Book.find(params[:id])
  end
  # 更新用
  def update_book
    @book = Book.find(params[:id])
    if @book.update(list_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to show_book_path(@book.id)
    else
      render :edit_book
    end
  end
  # ストロングパラメータ
  def list_params
    params.require(:book).permit(:title, :body)
  end
end