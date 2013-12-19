class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :author
  validates_numericality_of :rating, less_than_or_equal_to: 100
end
