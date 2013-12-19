module Seeders
  module Categories
    class << self
      def seed
        categories = ['horror', 'comedy', 'horror']
        categories.each do |category|
          Category.find_or_create_by(title: category)
        end
      end
    end
  end
end
