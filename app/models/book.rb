class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :author
  validates_presence_of :staff_favorite
end
