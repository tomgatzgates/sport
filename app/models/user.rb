class User < ApplicationRecord
  validates :first_name, presence: true, length: { in: 1..30 }
  validates :last_name, presence: true, length: { in: 1..30 }
  validates :email, presence: true, length: { in: 1..60 }

  def full_name
    "#{first_name} #{last_name}"
  end

  def email=(value)
    self[:email] = value.presence && value.to_s.downcase.strip
  end
end
