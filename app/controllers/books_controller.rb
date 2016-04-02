class BooksController < ApplicationController
    before_action :find_book, only: [:show, :edit, :update, :destroy]

    def index
        @books = Book.all.order("created_at DESC")
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_param)
        if @book.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def show
    end

    private

        def book_param
            params.require(:book).permit(:title,:description,:author)
        end

        def find_book
            @book = Book.find(params[:id])
        end

end
