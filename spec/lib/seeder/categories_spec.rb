require 'spec_helper'

describe Seeders::Categories do
  it "seeds unique categories" do
   categories = ['horror', 'comedy', 'horror']
   categories = categories.count
   Seeders::Categories.seed
   expect(Category.count).to_not eql(categories)

  end
end
