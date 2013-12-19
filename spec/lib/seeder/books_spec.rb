require 'spec_helper'

describe Seeders::Books do
  it "seeds the database with books" do
    count = Book.count
    Seeders::Books.seed
    expect(Book.count).to_not eql(count)
  end

  it "seeds the book only once" do
    Seeders::Books.seed
    count = Book.count
    expect(Book.count).to eql(count)
  end
end
