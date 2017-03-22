class Account < ApplicationRecord
  validates :username, presence: true
  validates :password, length: { in: 6..20}
end
