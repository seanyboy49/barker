class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt
  validates :password, presence: :true
  # validates :password_confirmation, presence: :true
  # has_secure_password
  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  def authenticate(input_password)

    p '*'*20
    p "inside authenticate"
    p "self #{self}"
    p "input_password"
    p input_password

    p "self.password:"
    p self.password

    p "password #{password}"
    p input_password == self.password
    p  self.password == input_password

    input_password == self.password
  end

end
