class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt
    validates :password_confirmation, presence: :true
  has_secure_password
end
