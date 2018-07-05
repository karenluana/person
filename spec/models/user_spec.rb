require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryGirl.build(:user) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).not_to be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).not_to be_valid
  end

  it "is not valid without a password bigger or equal than 6 characters " do
    subject.password = "12345"
    expect(subject).not_to be_valid
  end
end
