require 'rails_helper'

RSpec.describe User, type: :model do

  context 'validation test' do
    it 'ensures username presence' do
      user = User.new(password: '123').save
      expect(user).to eq(false)
    end
    it 'ensures password presence' do
      user = User.new(username: 'bob').save
      expect(user).to eq(false)
    end
    it 'ensures unique username' do
      user = User.new(username: 'Joseph').save
      expect(user).to eq(false)
    end
    it 'check user relationship to messages' do
      user = User.create(username: 'Kyle', password: "p")
      Message.create(user_id: user.id, subject: "kyle yo", content: "kyle stuff", hidden: true)
      expect(user.messages.length).to eq(1)
    end
  end
end
