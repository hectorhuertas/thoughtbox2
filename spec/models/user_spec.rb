require 'rails_helper'

describe User do
  it { should have_secure_password }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should allow_value("email@example.com").for(:email) }
  it { should_not allow_value("email.com").for(:email) }
  it { should have_many(:thoughts) }
end
