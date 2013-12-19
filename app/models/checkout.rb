class Checkout < ActiveRecord::Base
  validates_numericality_of :book_id, only_integer: true
  validates :available, inclusion: { in: [true, false] }
  validates_presence_of :available
  validates_presence_of :book_id
end
