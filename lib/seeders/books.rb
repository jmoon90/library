module Seeders
  module Books
    class << self
      def seed
        book1 = { book: "hunger_game1", author: 'suzzanne' }
        book2 = { book: "hunger_game2", author: 'suzzanne' }
        book3 = { book: "hunger_game3", author: 'suzzanne' }

        books = [book1, book2, book3]

        books.each do |book|
          book_info =Book.find_or_create_by(title: book[:book])
          book_info.update_attribute(:author, book[:author])
        end

      end
    end
  end
end

