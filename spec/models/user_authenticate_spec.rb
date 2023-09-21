require 'rails_helper'

RSpec.describe UserAuthenticate, type: :model do
  it 'is valid with valid attributes' do
    user = UserAuthenticate.new(email: 'user@example.com', password: 'password')
    expect(user).to be_valid
  end

  it 'is invalid without an email' do
    user = UserAuthenticate.new(password: 'password')
    expect(user).to be_invalid
    expect(user.errors[:email]).to include('Please enter email')
  end

  it 'is invalid with a duplicate email' do
    # Create a user with the same email first
    UserAuthenticate.create(email: 'user@example.com', password: 'password')
    user = UserAuthenticate.new(email: 'user@example.com', password: 'password')
    expect(user).to be_invalid
    expect(user.errors[:email]).to include('Email already present')
  end

  it 'is invalid without a password' do
    user = UserAuthenticate.new(email: 'user@example.com')
    expect(user).to be_invalid
    expect(user.errors[:password]).to include('Please enter password')
  end
end
