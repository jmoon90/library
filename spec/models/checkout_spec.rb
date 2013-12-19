require 'spec_helper'

describe Checkout do
  it { should validate_numericality_of(:book_id) }
  it { should validate_presence_of(:book_id) }
  it { should_not have_valid(:book_id).when('',nil,'a+z') }

  it { should validate_presence_of(:available) }
end
