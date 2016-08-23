class BooksController < ApplicationController
  def landing
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to root_path()
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      redirect_to root_path()
    else
      flash[:error] = 'Ažuriranje naslova nije uspjelo'
      render :edit
    end

  end

  def show
    book_id = params[:id]
    @book = Book.find(book_id)
  end

  # destroy je default metoda (ne smijem koristiti delete, jer se ona
  # propagira u linku method: :deletes)
  def destroy
    book_id = params[:id]
    @book = Book.find(book_id)
    @book.destroy
    redirect_to root_path()
  end


  def book_params
    params.require(:book).permit(:title, :autors, :edition, :publisher, :language, :year, :pages, :note, :imgurl, :genreid)
  end
end

=begin
["id", "title", "autors", "edition", "publisher", "language", "year", "pages", "note", "imgurl", "genderid", "timestamps", "created_at", "updated_at"]
=end
