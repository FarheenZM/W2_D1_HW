class Library
  def initialize(input_books)
    @books = input_books
  end

  def books()
    return @books
  end

  def book_info(book_title)
    for book in @books
      if book_title == book[:title]
        return book
      end
    end
  end

  def book_rental_details(book_title)
    for book in @books
      if book_title == book[:title]
        return book[:rental_details]
      end
    end
  end

  def add_book(book_title)
    book = {
      title: book_title,
      rental_details:
      {
        student_name: "",
        date: ""
      }
    }
    @books.push(book)
  end

  def change_rental_details(book_title, student_name, date)
    book = book_info(book_title)
    book[:rental_details][:student_name] = student_name
    book[:rental_details][:date] = date
  end

end
