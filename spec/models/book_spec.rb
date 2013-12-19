require 'spec_helper'

describe Book do
  #valid_attribute
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:author) }

  #shoulda-matcher
  it { should_not have_valid(:author).when(nil, '') }
  it { should_not have_valid(:title).when(nil, '') }
end


