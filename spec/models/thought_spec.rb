require 'rails_helper'

RSpec.describe Thought, type: :model do
  it { should validate_presence_of :title }
  it { should belong_to :user }
  it { subject.quality.should eq 0 }
end
