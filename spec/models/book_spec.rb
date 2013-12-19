require 'spec_helper'

describe Book do
  #valid_attribute
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:staff_favorite) }

  #shoulda-matcher
  it { should_not have_valid(:author).when(nil, '') }
  it { should_not have_valid(:title).when(nil, '') }
  it { should_not have_valid(:staff_favorite).when(nil, '') }
  it { should validate_numericality_of(:rating).is_less_than_or_equal_to(100) }

end


