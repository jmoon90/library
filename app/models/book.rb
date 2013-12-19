class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :author
  validates_numericality_of :rating, less_than_or_equal_to: 100
  has_many :checkouts

  def seed
    Book.find_each do |book|
     checkout = Checkout.find_or_create_by(book_id:  book.id)
     checkout.save
    end
  end

  def series_count(series)
    series.count
  end
end
