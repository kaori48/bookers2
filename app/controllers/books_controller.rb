class BooksController < ApplicationController
  def index
  end
#わからん
  def show
  end
#新規データ登録用?
  def new
  	@book = Book.new
  end
#投稿データの保存
  def create
  	@book = Book.new(book_params)
  	@book.user_is = current_user.id
    if @book.save
       flash[:notice] = "successfully"#成功メッセ
     redirect_to book_path(@book)#booksのshowビューに移動、なぜ＠かわからん？
      else
       @books = Book.all #全員の一覧に戻るので引っ張ってくる
       render "index"　#一覧に戻（全員の）
       #エラー文まだ,表示も設定してない
    end
  end
#編集
  def edit
  end

private#投稿データの保存のストロングパラメータ
   def book_params
     params.require(:book).permit(:title, :body)
   end
end
