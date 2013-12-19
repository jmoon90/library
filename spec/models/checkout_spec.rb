require 'spec_helper'

describe Checkout do
  it { should validate_numericality_of(:book_id) }
  it { should validate_presence_of(:book_id) }
  it { should_not have_valid(:book_id).when('',nil,'a+z') }

  it { should validate_presence_of(:available) }
  #
  #it { should have_valid(:available).when(true, false) }
  #
  it "creates books" do
    checkout = FactoryGirl.create(:checkout)

    book_availability = FactoryGirl.create(:book_id, checkout: checkout)

    expect(book_availability).to eq(false)
  end

end
