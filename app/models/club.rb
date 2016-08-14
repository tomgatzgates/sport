class Club < ApplicationRecord
  validates :name, presence: true, length: { in: 1..60 }
end
