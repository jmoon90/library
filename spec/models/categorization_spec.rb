require 'spec_helper'

describe Categorization do
  it { should belong_to(:book) }
  it { should belong_to(:category) }
  it { should validate_presence_of(:book) }
  it { should validate_presence_of(:category) }

end
