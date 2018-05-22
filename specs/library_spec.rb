require ("minitest/autorun")
require ("minitest/rg")

require_relative("../library")

class TestLibrary < MiniTest::Test

  def test_books
    lib = Library.new(
      [
        {title: "lord_of_the_rings",
          rental_details:
          {
            student_name: "Fari",
            date: "01/12/18"
          }
        },
        {title: "fire_and_ice",
          rental_details:
          {
            student_name: "Debi",
            date: "12/09/18"
          }
        }
      ]
    )
      assert_equal(2, lib.books.count)
  end

  def test_book_info
    lib = Library.new(
      [
        {title: "lord_of_the_rings",
          rental_details:
          {
            student_name: "Fari",
            date: "01/12/18"
          }
        },
        {title: "fire_and_ice",
          rental_details:
          {
            student_name: "Debi",
            date: "12/09/18"
          }
        }
      ]
    )
      info = lib.book_info("fire_and_ice")
      assert_equal(lib.books[1], info)
  end

  def test_book_rental_details
    lib = Library.new(
      [
        {title: "lord_of_the_rings",
          rental_details:
          {
            student_name: "Fari",
            date: "01/12/18"
          }
        },
        {title: "fire_and_ice",
          rental_details:
          {
            student_name: "Debi",
            date: "12/09/18"
          }
        }
      ]
    )
      rental_details = lib.book_rental_details("fire_and_ice")
      assert_equal(lib.books[1][:rental_details], rental_details)
  end

  #Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
  def test_add_book
    lib = Library.new(
      [
        {title: "lord_of_the_rings",
          rental_details:
          {
            student_name: "Fari",
            date: "01/12/18"
          }
        },
        {title: "fire_and_ice",
          rental_details:
          {
            student_name: "Debi",
            date: "12/09/18"
          }
        }
      ]
    )
    lib.add_book("Beauty_and_the_beast")
    assert_equal(3, lib.books.count)
    assert_equal("", lib.books[2][:rental_details][:student_name])
    assert_equal("", lib.books[2][:rental_details][:date])
  end

  #Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
  def test_change_rental_details
    lib = Library.new(
      [
        {title: "lord_of_the_rings",
          rental_details:
          {
            student_name: "Fari",
            date: "01/12/18"
          }
        },
        {title: "fire_and_ice",
          rental_details:
          {
            student_name: "Debi",
            date: "12/09/18"
          }
        }
      ]
    )
    lib.change_rental_details("lord_of_the_rings", "Farheen", "14/10/18")
    assert_equal("Farheen", lib.books[0][:rental_details][:student_name])
    assert_equal("14/10/18", lib.books[0][:rental_details][:date])
  end

end
