require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validates' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
  end

  describe 'email' do
    it 'downcases email' do
      email = 'TOM@TOM.COM'

      user = build(:user, email: email)

      expect(user.email).to eq 'tom@tom.com'
    end

    it 'strips whitespace from email' do
      email = '    tom@tom.com    '

      user = build(:user, email: email)

      expect(user.email).to eq 'tom@tom.com'
    end
  end
end
