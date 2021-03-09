class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: {case_sensitive: false },
                    format: { with: /\S+@\S+/ },
                    length: { minimum: 10, allow_blank: true }
end
